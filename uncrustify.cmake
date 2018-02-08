add_custom_target(
	uncrustify
	COMMAND find ../src/ -name "*.c" > source_list.txt
	COMMAND uncrustify -c ../kernel_linux.cfg --no-backup --replace -F source_list.txt
)
