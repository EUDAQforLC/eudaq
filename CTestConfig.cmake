## This file should be placed in the root directory of your project.
## Then modify the CMakeLists.txt file in the root directory of your
## project to incorporate the testing dashboard.
## # The following are required to uses Dart and the Cdash dashboard
##   ENABLE_TESTING()
##   INCLUDE(CTest)
set(CTEST_PROJECT_NAME "EUDAQ")
set(CTEST_NIGHTLY_START_TIME "03:05:00 UTC")

set(CTEST_DROP_METHOD "http")
set(CTEST_DROP_SITE "aidasoft.desy.de")
set(CTEST_DROP_LOCATION "/CDash/submit.php?project=EUDAQ")
set(CTEST_DROP_SITE_CDASH TRUE)
