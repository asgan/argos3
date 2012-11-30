#
# Project name
#
project(argos3_${ARGOS_BUILD_FOR})

#
# Common values for CPack variables
#
set(ARGOS_PACKAGE_DESCRIPTION "ARGoS (multi-physics multi-robot simulator)
 ARGoS is a highly scalable multi-robot simulator. Among its distinctive
 features, there are: (i) modularity (robots, devices, physics engines,
 visualizations and controllers are plug-ins), (ii) tunable accuracy, and (iii)
 the possibility to run multiple physics engines at the same time.")
set(ARGOS_PACKAGE_HOMEPAGE "http://iridia.ulb.ac.be/argos")
set(ARGOS_PACKAGE_MAINTAINER "Carlo Pinciroli <ilpincy@gmail.com>")
set(ARGOS_PACKAGE_REQUIRES "libgsl0-dev, freeglut3-dev, libqt4-opengl-dev, libxi-dev, libxmu-dev, libfreeimage-dev")

#
# General CPack configuration
#
set(CPACK_PACKAGE_NAME "argos3_${ARGOS_BUILD_FOR}")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "ARGoS3 package for ${ARGOS_BUILD_FOR}")
set(CPACK_PACKAGE_VENDOR "IRIDIA-ULB")
set(CPACK_PACKAGE_VERSION_MAJOR "3")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/../doc/GPL_V3")
set(CPACK_RESOURCE_FILE_README "${CMAKE_SOURCE_DIR}/../README.asciidoc")
set(CPACK_STRIP_FILES ON)

#
# Configuration for the Debian generator
# TODO Testing
#
set(CPACK_DEBIAN_PACKAGE_DEPENDS ${ARGOS_PACKAGE_REQUIRES})
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION ${ARGOS_PACKAGE_DESCRIPTION})
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE ${ARGOS_PACKAGE_HOMEPAGE})
set(CPACK_DEBIAN_PACKAGE_MAINTAINER ${ARGOS_PACKAGE_MAINTAINER})
set(CPACK_DEBIAN_PACKAGE_SECTION "contrib/science")

#
# Configuration for the RPM generator
# TODO Finish
#
set(CPACK_RPM_PACKAGE_DESCRIPTION ${ARGOS_PACKAGE_DESCRIPTION})
set(CPACK_RPM_PACKAGE_URL ${ARGOS_PACKAGE_HOMEPAGE})
set(CPACK_RPM_PACKAGE_GROUP "Development/Tools")
set(CPACK_RPM_PACKAGE_LICENSE "GPL")
set(CPACK_RPM_PACKAGE_REQUIRES ${ARGOS_PACKAGE_REQUIRES})
set(CPACK_RPM_PACKAGE_URL ${ARGOS_PACKAGE_HOMEPAGE})

#
# Time to call CPack
#
include(CPack)
