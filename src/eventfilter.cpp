#include "eventfilter.h"

#include <QDBusConnection>
#include <QDBusInterface>
#include <iostream>
using namespace std;

bool EventFilter::eventFilter(QObject *obj, QEvent *event)
{
   if (event->type() == QEvent::ApplicationDeactivate) {
      return true; // The event is handled
   }
   if (event->type() == QEvent::ApplicationActivate) {

       QDBusConnection connection = QDBusConnection::sessionBus();
       if (connection.isConnected()) {
           //Send notification to desktop's notification manager
           QDBusInterface* indicatorIface = new QDBusInterface("org.freedesktop.Notifications",
                            "/org/freedesktop/Notifications", "org.freedesktop.Notifications", connection);
           indicatorIface->call(QDBus::NoBlock, "clearSMSs");
       }

      return true;
   }
   return QObject::eventFilter(obj, event); // Unhandled events are passed to the base class
}
