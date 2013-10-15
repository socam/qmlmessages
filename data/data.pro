TEMPLATE = aux

desktop.path = $${INSTALL_ROOT}/usr/share/applications
desktop.files = qmlmessages.desktop

client.path = $${INSTALL_ROOT}/usr/share/telepathy/clients
client.files = qmlmessages.client

service.path = $${INSTALL_ROOT}/usr/share/dbus-1/services
service.files = org.freedesktop.Telepathy.Client.qmlmessages.service \
                org.nemomobile.qmlmessages.service

context.path = $${INSTALL_ROOT}/usr/share/contextkit/providers
context.files = org.nemomobile.qmlmessages.context.context

systemd_service_entry.files = qmlmessages-prestart.service
systemd_service_entry.path = /usr/lib/systemd/user

INSTALLS += desktop client service context systemd_service_entry
