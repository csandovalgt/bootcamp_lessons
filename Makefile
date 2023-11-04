generate:
	dart run build_runner build

build_empresaA:
	flutter build apk --dart-define=EMPRESA=A

build_empresaB:
	flutter build apk --dart-define=EMPRESA=B
