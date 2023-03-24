#COMMAND="./Rss_nn_test $1 runtime-config private-$1.pem"
COMMAND="./fpSum $1 runtime-config private-$1.pem 1"

SLEEPTIME=(0 8 4 0)
size=(4 6 8 10 12 14 16 18)
ring=(32 64 32 64)
m=(23 23 52 52)
p=(8 8 11 11)
w=(16 32 16 32)
for j in ${size[@]}
do
    for k in {1..2}
    do
        echo "COMMAND: $COMMAND ${ring[$2]} $j ${m[$2]} ${p[$2]} ${w[$2]}"
        eval "$COMMAND ${ring[$2]} $j ${m[$2]} ${p[$2]} ${w[$2]}"
        sleep ${SLEEPTIME[$1]}
    done
done
