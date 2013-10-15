#ifndef EVENTFILTER_H
#define EVENTFILTER_H

#include <QObject>
#include <QEvent>

class EventFilter : public QObject {

    bool eventFilter(QObject *obj, QEvent *event);

};


#endif // EVENTFILTER_H
