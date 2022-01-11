#
# Makefile
# SwiftCLI
#

################################################################################
#
# Variables
#

# OS specific differences
UNAME = ${shell uname}

################################################################################
#
# Targets
#

.PHONY: version
version:
	xcodebuild -version
	swift --version
	swift package tools-version

.PHONY: clean
clean:
	rm -rf Packages
	swift package clean
	swift package reset

.PHONY: describe
describe:
	swift package describe

.PHONY: resolve
resolve:
	swift package resolve

.PHONY: dependencies
dependencies: resolve
	swift package show-dependencies
	tree -L 2 ~/Library/Developer/Xcode/DerivedData/Ditto-dsndlwmrrdcamaefatxnunuvgbyn/SourcePackages/artifacts

.PHONY: update
update: resolve
	swift package update

.PHONY: build
build:
	swift build

.PHONY: test
test: build
	swift test
