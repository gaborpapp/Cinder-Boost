if( NOT TARGET Cinder-Boost )

	get_filename_component( CINDER_BOOST_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )

	list( APPEND Cinder-Boost_INCLUDES
		${CINDER_BOOST_PATH}/include
	)

	if( CINDER_MAC )
		list( APPEND Cinder-Boost_INCLUDES
			${CINDER_BOOST_PATH}/include/
		)
		set( CINDER_MAC_BOOST_LIB_PATH
			${CINDER_BOOST_PATH}/lib/macos/
		)
		list( APPEND Cinder-Boost_LIBRARIES
			${CINDER_MAC_BOOST_LIB_PATH}/libboost_date_time.a
			${CINDER_MAC_BOOST_LIB_PATH}/libboost_filesystem.a
			${CINDER_MAC_BOOST_LIB_PATH}/libboost_system.a
			${CINDER_MAC_BOOST_LIB_PATH}/libboost_thread.a
		)
	endif()
endif()
