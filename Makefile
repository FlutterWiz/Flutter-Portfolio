# to run:  make run

run:
	flutter clean && \
    flutter pub get && \
    flutter build web --web-renderer canvaskit --release --no-tree-shake-icons && \
    flutter run -d chrome --web-renderer canvaskit
