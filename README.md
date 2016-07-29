# gridengine_ncpu_check
GridEngine ncpu check

# Output

```
$ gridengine_ncpu_check.sh

global                  -               -     -       -       -       -       -

sys1                    linux-x64      24  0.03  251.4G   61.2G   16.0G   16.0G
  556362 0.55500 QLOGIN     hanako       r     06/21/2016 11:53:03 all.q@sys1 MASTER ncpu=1
  570637 0.55500 QLOGIN     taro         r     06/19/2016 20:45:49 backup.q@n MASTER ncpu=10
[hanako]=>[1] NCPU
[taro]=>[10] NCPU

sys2                    linux-x64      24  0.01  251.4G    5.9G   16.0G    2.6G
  556361 0.55500 QLOGIN     hanako       r     06/21/2016 11:52:50 all.q@sys2 MASTER ncpu=1
  570681 0.55500 QLOGIN     taro         r     06/20/2016 11:05:14 all.q@sys2 MASTER ncpu=1
  570945 0.55500 QLOGIN     hanako       r     06/22/2016 13:25:45 all.q@sys2 MASTER ncpu=1
[hanako]=>[2] NCPU
[taro]=>[1] NCPU

sys3                    linux-x64      24  0.41  251.4G    3.9G   16.0G    5.7G

sys4                    linux-x64      24  0.44  251.4G    1.6G   16.0G  119.1M

sys5                    linux-x64      24 18.12  251.4G    8.7G   16.0G    4.3G
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:40:01 subsystem. MASTER 2696 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:40:50 subsystem. MASTER 2697 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:42:18 subsystem. MASTER 2700 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:43:00 subsystem. MASTER 2702 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:45:55 subsystem. MASTER 2706 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:46:51 subsystem. MASTER 2708 ncpu=4
[nsuzuki]=>[24] NCPU

sys6                    linux-x64      24 15.05  251.4G   13.8G   16.0G  188.5M
  573026 0.50617 arrayjob__ nsuzuki      r     06/27/2016 17:47:56 subsystem. MASTER 7 ncpu=1
  573027 0.50617 arrayjob__ nsuzuki      r     06/27/2016 17:52:10 subsystem. MASTER 2 ncpu=1
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:34:04 subsystem. MASTER 2683 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:34:12 subsystem. MASTER 2684 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:36:38 subsystem. MASTER 2686 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:39:16 subsystem. MASTER 2693 ncpu=4
  573230 0.50617 arrayjob__ nsuzuki      r     06/29/2016 14:45:21 subsystem. MASTER 2705 ncpu=4
[nsuzuki]=>[22] NCPU

END
```
