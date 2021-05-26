#! /bin/sh
echo "================================="
echo " UNPLUG USB & REMOVE TRRS CABLE";
echo " REPLUG MASTER HALF & RESET IT";
echo "================================="
sleep 10; 

echo "================================="
echo "     FLASHING MASTER HALF";
echo "================================="
docker-compose run kyria_flash;

echo "================================="
echo "     FLASHING MASTER DONE";
echo "  UNPLUG MASTER, PLUG IN SLAVE";
sleep 4;
echo "      RESET SLAVE HALF";
echo "================================="

sleep 3;
echo "================================="
echo "      FLASHING SLAVE HALF";
echo "================================="
docker-compose run kyria_flash_secondary
echo "================================="
echo "      FLASHING SLAVE DONE";
echo "================================="

