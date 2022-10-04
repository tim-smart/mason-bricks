.PHONY: build-runner
build-runner:
	pm2 start --no-daemon "flutter pub run build_runner watch --delete-conflicting-outputs"

.PHONY: deps
deps:
	flutter pub get

.PHONY: clean
clean:
	flutter clean

.PHONY: alpha
alpha: clean update-offline-data
	cd android && bundle update fastlane && bundle exec fastlane alpha
	cd ios && bundle update fastlane && bundle exec fastlane alpha

.PHONY: release
release: clean update-offline-data
	cd android && bundle update fastlane && bundle exec fastlane release
	cd ios && bundle update fastlane && bundle exec fastlane release

.PHONY: screenshots
screenshots: deps
	dart tools/screenshots.dart

.PHONY: launcher_icons
launcher_icons: deps
	convert assets/icon/icon.png -alpha off assets/icon/icon.png
	convert assets/icon/icon_bg.png -alpha off assets/icon/icon_bg.png
	flutter pub run flutter_launcher_icons:main
