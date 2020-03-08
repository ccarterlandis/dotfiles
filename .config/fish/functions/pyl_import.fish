function pyl_import
    pylint $argv --disable=all --enable=wrong-import-order,unused-import,unused-wildcard-import,wildcard-import,wrong-import-position,multiple-imports
end
