# CMake generated Testfile for 
# Source directory: /home/amin/gnss_ws/src/gnss
# Build directory: /home/amin/gnss_ws/build/gnss
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_gnss_roslint_package "/home/amin/gnss_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/amin/gnss_ws/build/test_results/gnss/roslint-gnss.xml" "--working-dir" "/home/amin/gnss_ws/build/gnss" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/amin/gnss_ws/build/test_results/gnss/roslint-gnss.xml make roslint_gnss")
add_test(_ctest_gnss_rostest_test_test_gnss.test "/home/amin/gnss_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/amin/gnss_ws/build/test_results/gnss/rostest-test_test_gnss.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/amin/gnss_ws/src/gnss --package=gnss --results-filename test_test_gnss.xml --results-base-dir \"/home/amin/gnss_ws/build/test_results\" /home/amin/gnss_ws/src/gnss/test/test_gnss.test ")
