#!/system/bin/sh
MODDIR="${0%/*}"

sleep 60

#esto es igual a /proc/sys/vm/swappines
echo '100' > /dev/memcg/memory.swappiness
# esto es para las apps, procesos... del sistema
echo '40' > /dev/memcg/system/memory.swappiness
# esto es para las apps del usuario
echo '50' > /dev/memcg/apps/memory.swappiness

# pid del proceso a buscar
process_name="system_server"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="surfaceflinger"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="pidof android.hardware.graphics.composer@2.0-service"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="pidof android.hardware.graphics.composer@2.1-service"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="pidof android.hardware.graphics.composer@2.2-service"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="pidof android.hardware.graphics.composer@2.3-service"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="pidof android.hardware.graphics.composer@2.4-service"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

# pid del proceso a buscar
process_name="pidof vendor.qti.hardware.display.composer-service"
# Buscar el ID del proceso (PID)
pid_proc=$(pidof "$process_name")
#imprimir pid del proceso en cgroup.procs
echo $pid_proc > /dev/memcg/system/cgroup.procs

exit 0