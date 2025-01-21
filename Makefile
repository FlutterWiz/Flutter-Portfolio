# to run: make run

run:
	flutter clean && \
    flutter pub get && \
	flutter gen-l10n --arb-dir lib/presentation/l10n && \
	dart run build_runner build --delete-conflicting-outputs && \
    flutter build web --web-renderer canvaskit --release --no-tree-shake-icons --no-source-maps && \
    $(MAKE) move_assets && \
    flutter run -d chrome --web-renderer canvaskit

release_run:
	flutter clean && \
    flutter pub get && \
	flutter gen-l10n --arb-dir lib/presentation/l10n && \
	dart run build_runner build --delete-conflicting-outputs && \
    flutter build web --web-renderer canvaskit --release --no-tree-shake-icons --no-source-maps && \
    $(MAKE) move_assets && \
    python3 -m http.server --directory build/web 8000

# Move (or copy) the assets from build/web/assets/assets/ to build/web/assets/ and remove the source directory if possible.
# This step exists to solve the flutter build command moves the assets to build/web/assets/assets.
# It's a known issue by Flutter: https://github.com/flutter/flutter/issues/86833
move_assets:
	@echo "Moving assets..."
	# Move image files from build/web/assets/assets to build/web/assets/
	cp -r build/web/assets/assets/* build/web/assets/ || true
	# Move the fonts folder from build/web/assets/assets/fonts to build/web/assets/fonts/
	cp -r build/web/assets/assets/fonts build/web/assets/ || true

build_runner:
	dart run build_runner build --delete-conflicting-outputs

localization:
	flutter gen-l10n --arb-dir lib/presentation/l10n