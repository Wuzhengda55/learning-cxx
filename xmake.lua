add_rules("mode.debug", "mode.release")
set_encodings("utf-8")
set_warnings("all")
set_languages("cxx17")

target("test")
    set_kind("static")
    add_defines(string.format("__XMAKE__=\"%s\"", os.scriptdir():gsub("\\", "/")))
    add_files("learn/test.cpp")

target("learn")
    set_kind("binary")
    add_deps("test")
    add_files("learn/learn.cpp")

target("summary")
    set_kind("binary")
    add_deps("test")
<<<<<<< HEAD
    add_ldflags("-pthread")
=======
	add_ldflags("-pthread")
>>>>>>> 4064cbac002e68c0b0a4102e722d0d9abfb8a461
    add_files("learn/summary.cpp")
