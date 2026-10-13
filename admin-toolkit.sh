
#!/bin/bash



#########################################
#########################################
#  AUTHOR : MANISH
#  DATE   : 14/10/26
#  VERSION : v2 
#  NEW FEATURE : ADDED THE ITEM LIST BELOW


# Linux Admin Toolkit - MVP
# Platform: Amazon Linux 2023
#############################################


while true; do
    clear

    echo "======================================"
    echo "        LINUX ADMIN TOOLKIT"
    echo "======================================"
    echo "1. System Health Report"
    echo "2. Memory Usage Report"
    echo "3. Disk Usage Report"
    echo "4. CPU & Process Monitor"
    echo "0. Exit"
    echo "======================================"

    read -r -p "Enter your choice: " choice

    case "$choice" in
        1)
            echo
            echo "Running System Health Report..."
            echo
            bash ./syshealth.sh
            ;;
        2)
            echo
            echo "========== MEMORY REPORT =========="
            free -h
            ;;
        3)
            echo
            echo "=========== DISK REPORT ==========="
            df -h
            ;;
        4)
            echo
            echo "======= TOP CPU PROCESSES ========"
            ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 11
            ;;
        0)
            echo "Exiting Linux Admin Toolkit. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
    read -r -p "Press Enter to return to the menu..."
done
