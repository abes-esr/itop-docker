#!/bin/bash
#Script de synchro bdd et itop
#auteur : MBA & ACT
#Date : 11092023



echo "--------------------------------------"
echo synchro_data_location_145
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=145
echo "--------------------------------------"

echo synchro_data_person_27
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=27
echo "--------------------------------------"

echo synchro_data_userldap_22
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=22
echo "--------------------------------------"

echo synchro_data_vlan_98
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=98
echo "--------------------------------------"

echo synchro_data_subnet_138
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=138
echo "--------------------------------------"

echo synchro_data_brand_42
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=42
echo "--------------------------------------"

echo synchro_data_model_46 
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=46
echo "--------------------------------------"

echo synchro_data_rack_75
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=75
echo "--------------------------------------"

echo synchro_data_brand_42
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=42
echo "--------------------------------------"

echo synchro_data_model_46
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=46
echo attente de 10 seconde

sleep 10s
echo "--------------------------------------"
echo synchro_data_iosversion_93
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=93
echo "--------------------------------------"

echo synchro_data_networkdevicetype_96
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=96
echo "--------------------------------------"

echo synchro_data_networkdevice_124
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=124
echo "--------------------------------------"

echo synchro_data_nas_117
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=117
echo "--------------------------------------"

echo synchro_data_storagesystem_130
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=130
echo "--------------------------------------"

echo synchro_data_sanswitch_128
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=128
echo "--------------------------------------"

echo synchro_data_farm_121
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=121
echo "--------------------------------------"

echo synchro_data_osfamily_51
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=51
echo "--------------------------------------"

echo synchro_data_osversion_48
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=48
echo "--------------------------------------"

echo synchro_data_server_38
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=38
echo attente de 10 seconde
sleep 10s
echo "--------------------------------------"

echo synchro_data_hypervisor_56
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=56
echo "--------------------------------------"

echo synchro_data_virtualmachine_69
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=69
echo "--------------------------------------"

echo synchro_data_fiberchannelinterface_103
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=103
echo "--------------------------------------"

echo synchro_data_logicalinterface_112
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=112
echo attente de 10 seconde
sleep 10s
echo "--------------------------------------"

echo synchro_data_physicalinterface_109
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=109
echo attente de 10 seconde
sleep 10s
echo "--------------------------------------"

echo synchro_data_PC_134
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=134
echo "--------------------------------------"


echo synchro_data_software_156
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=156
echo "--------------------------------------"

echo synchro_data_middleware_154
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=154
echo "--------------------------------------"

echo synchro_data_158
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=158
echo "--------------------------------------"

echo synchro_data_webserver_160
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=160
echo "--------------------------------------"

echo synchro_data_webapplication_162
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=162
echo "--------------------------------------"

echo synchro_data_applicationsolution_164
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=164
echo "--------------------------------------"

echo synchro_data_lnkapplicationsolutiontofunctionalci_166
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=166

echo "--------------------------------------"

echo synchro_data_volumes_logique_168

php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=168

echo "--------------------------------------"

echo synchro_data_lnkphysicalinterfacetovlan_171
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=171

echo "--------------------------------------"

echo synchro_data_lnkconnectablecitonetworkdevice_174
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=174

echo "--------------------------------------"

echo synchro_data_lnkvirtualdevicetovolume_184
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=184

echo "--------------------------------------"

echo synchro_data_dbserver_201
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=201

echo "--------------------------------------"

echo synchro_data_databaseschema_204
php -q /var/www/itop/synchro/synchro_exec.php --auth_user=$ITOP_ADMIN --auth_pwd=$ITOP_ADMIN_PASS --data_sources=204

echo "--------------------------------------"
