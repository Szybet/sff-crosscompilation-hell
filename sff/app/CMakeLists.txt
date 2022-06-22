file(GLOB fileSrc
     "*.h"
     "*.cpp"
     "*.hpp"
)
add_executable(sff ${fileSrc})
target_link_libraries(sff qvterm)
