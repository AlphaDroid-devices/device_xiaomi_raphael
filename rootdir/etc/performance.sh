#!/system/bin/sh
# Kprofiles+
# OnettBoots
# https://t.me/the_cool_kid
	echo "max" > /dev/cpuctl/top-app/cpu.uclamp.max
        echo "15.00" > /dev/cpuctl/top-app/cpu.uclamp.min
        echo "1" > /dev/cpuctl/top-app/cpu.uclamp.boosted
        echo "1" > /dev/cpuctl/top-app/cpu.uclamp.latency_sensitive
        #foreground
        echo "80.00" > /dev/cpuctl/foreground/cpu.uclamp.max
        echo "15.00" > /dev/cpuctl/foreground/cpu.uclamp.min
        echo "0" > /dev/cpuctl/foreground/cpu.uclamp.boosted
        echo "1" > /dev/cpuctl/foreground/cpu.uclamp.latency_sensitive
        #background
        echo "60.00" > /dev/cpuctl/background/cpu.uclamp.max
        echo "0" > /dev/cpuctl/background/cpu.uclamp.min
        echo "0" > /dev/cpuctl/background/cpu.uclamp.boosted
        echo "0" > /dev/cpuctl/background/cpu.uclamp.latency_sensitive
        #system-background
        echo "50.00" > /dev/cpuctl/system-background/cpu.uclamp.max
        echo "0" > /dev/cpuctl/system-background/cpu.uclamp.min
        echo "0" > /dev/cpuctl/system-background/cpu.uclamp.boosted
        echo "0" > /dev/cpuctl/system-background/cpu.uclamp.latency_sensitive
        #devfreq_cpu_input_boost
        echo "1382400" > /sys/module/cpu_input_boost/parameters/input_boost_freq_little
        echo "1708800" > /sys/module/cpu_input_boost/parameters/input_boost_freq_big
        echo "2227200" > /sys/module/cpu_input_boost/parameters/input_boost_freq_prime
        echo "1785600" > /sys/module/cpu_input_boost/parameters/max_boost_freq_little
        echo "2419200" > /sys/module/cpu_input_boost/parameters/max_boost_freq_big
	echo "2956800" > /sys/module/cpu_input_boost/parameters/max_boost_freq_prime
	#echo "58" > /sys/module/devfreq_boost/parameters/input_boost_duration
	echo "Y" > /sys/module/cpu_input_boost/parameters/input_boost_enable
	#gpu
	echo "0" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/throttling
	echo "0" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/max_pwrlevel
	echo "6" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/min_pwrlevel
	echo "6" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/default_pwrlevel
	echo "770000000" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/devfreq/2c00000.qcom,kgsl-3d0/max_freq
        echo "770" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/max_clock_mhz
	echo "150000000" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/devfreq/2c00000.qcom,kgsl-3d0/max_freq
        echo "150" > /sys/devices/platform/soc/2c00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/max_clock_mhz
        #touch
        echo "1 0 0 0" > /sys/devices/platform/goodix_ts.0/game_mode
        #cpu
        echo "6000" > /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us
        echo "1000" > /sys/devices/system/cpu/cpufreq/policy4/schedutil/down_rate_limit_us
        echo "1000" > /sys/devices/system/cpu/cpufreq/policy7/schedutil/down_rate_limit_us
        echo "0" > /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us
        echo "4000" > /sys/devices/system/cpu/cpufreq/policy4/schedutil/up_rate_limit_us
        echo "20000" > /sys/devices/system/cpu/cpufreq/policy7/schedutil/up_rate_limit_us
        echo "768000" > /sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq
        echo "1785600" > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
        echo "825600" > /sys/devices/system/cpu/cpufreq/policy4/scaling_min_freq
        echo "2419200" > /sys/devices/system/cpu/cpufreq/policy4/scaling_max_freq
        echo "825600" > /sys/devices/system/cpu/cpufreq/policy7/scaling_min_freq
        echo "2841600" > /sys/devices/system/cpu/cpufreq/policy7/scaling_max_freq
        echo "performance" > /sys/class/devfreq/soc:qcom,cpu-llcc-ddr-bw/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,cpu4-llcc-ddr-lat/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,cpu4-cpu-llcc-lat/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,cpu4-cpu-ddr-latfloor/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,cpu0-llcc-ddr-lat/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,cpu0-cpu-llcc-lat/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,cpu-cpu-llcc-bw/governor
	echo "performance" > /sys/class/devfreq/soc:qcom,npu-npu-ddr-bw/governor
