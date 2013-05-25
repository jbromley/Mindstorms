# z-n.py
# Calculate PID parameters from k_c, P_c, and dt.
import sys

kc = float(sys.argv[1])
pc = float(sys.argv[2])
dt = float(sys.argv[3])

kp = 0.6 * kc
ki = 2 * kp * dt / pc
kd = kp * pc / (8 * dt)

print "kp = %6.4f, ki = %6.4f, kd = %6.4f" % (kp, ki, kd)


