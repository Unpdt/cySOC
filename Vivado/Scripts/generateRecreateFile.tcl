# 切换到工作目录
cd [get_property directory [current_project]]

# 生成重建脚本
write_project_tcl   -no_copy_sources \
                    -use_bd_files \
                    -force ../../Scripts/reCreate.tcl