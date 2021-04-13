HASS_USER = homeassistant

install:
	sudo cp -f hass.service /etc/systemd/system/hass@$(HASS_USER).service
	sudo systemctl enable hass@$(HASS_USER)
	sudo systemctl restart hass@$(HASS_USER)

remove:
uninstall:
	sudo systemctl disable hass@$(HASS_USER)
	sudo rm -f /etc/systemd/system/hass@$(HASS_USER).service
