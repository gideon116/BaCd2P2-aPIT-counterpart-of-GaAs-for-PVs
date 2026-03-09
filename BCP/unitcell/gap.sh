homo=`awk '/NELECT/ {print $3/2}' $1`
lumo=`awk '/NELECT/ {print $3/2+1}' $1`
nkpt=`awk '/NKPTS/ {print $4}' $1`

e1=`grep "     $homo     " $1 | head -$nkpt | sort -n -k 2 | tail -1 | awk '{print $2}'`
e2=`grep "     $lumo     " $1 | head -$nkpt | sort -n -k 2 | head -1 | awk '{print $2}'`

echo "HOMO: band:" $homo " E=" $e1
echo "LUMO: band:" $lumo " E=" $e2
