
target("AresClt")
    set_kind("shared")
    add_headerfiles("AresClt/include/*.h", {prefixdir = "AresClt"})
    add_linkdirs("AresClt/x86")
    add_links("AresCltCpp", "ErebusTdCpp")
    add_files("AresClt/config/*", "AresClt/x86/*.ini")

target("oesapi")
    set_kind("shared")
    add_headerfiles("oesapi/include/**", {prefixdir = "oesapi"})
    if is_plat("windows") then
        if is_arch("x86") then
            add_linkdirs("oesapi/x86")
        elseif is_arch("x86_64") then
            add_linkdirs("oesx64")
        end
    elseif is_plat("linux") then
        add_linkdirs("oesapi/linux")
    end
    add_links("oes_api")