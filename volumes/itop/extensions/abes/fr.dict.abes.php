<?php
//
// Class: Hypervisor
//

Dict::Add('FR FR', 'French', 'Français', array(
	'Class:Hypervisor/Attribute:farm_id' => 'Ovirt/HyperV',
	'Class:Hypervisor/Attribute:farm_name' => 'Nom Ovirt/HyperV',	
	'Class:Farm' => 'Ovirt/HyperV',	
	'Class:Farm/Attribute:redundancy/disabled' => 'Ovirt/HyperV est opérationnel si tous les hyperviseurs qui le composent sont opérationnels',
	'Class:Farm/Attribute:redundancy/count' => 'Nombre minimal d\'hyperviseurs pour que Ovirt/HyperV soit opérationnel : %1$s',
	'Class:Farm/Attribute:redundancy/percent' => 'Pourcentage minimal d\'hyperviseurs pour que Ovirt/HyperV soit opérationnel : %1$s %%',
	'Class:VirtualMachine/Attribute:virtualhost_id' => 'Ovirt/HyperV / Hyperviseur',
	'Class:Person/Attribute:trigramme' => 'Trigramme',	
	'Class:ApplicationSolution/Attribute:authentification' => 'Authentification ?',
	'Class:ApplicationSolution/Attribute:auth_compte_indiv' => 'Comptes utilisateurs individuels ?',
	'Class:ApplicationSolution/Attribute:auth_compte_partage' => 'Comptes utilisateurs partagés ?',
	'Class:ApplicationSolution/Attribute:auth_compte_admin_partage' => 'Compte administrateur (accès backoffice) partagé ?',
	'Class:ApplicationSolution/Attribute:auth_stockage_compte' => 'Stockage données des comptes utilisateurs',
	'Class:ApplicationSolution/Attribute:auth_stockage_mdp' => 'Stockage du mot de passe',
	'Class:ApplicationSolution/Attribute:auth_donnees_perso' => 'Présence de données personnelles sensibles ?',
	'Class:ApplicationSolution/Attribute:auth_groupe_securite' => 'Utilisation des groupes de sécurité ?',
	'Class:ApplicationSolution/Attribute:auth_base_reference' => 'Base de référence du mot de passe',
	'Class:ApplicationSolution/Attribute:auth_protocole' => 'Protocole du canal de communication',
	'Class:ApplicationSolution/Attribute:auth_reinit_mdp' => 'Réinitialisation du mot de passe ?',
	'Class:ApplicationSolution/Attribute:auth_algo_hash_mdp' => 'Algorithme de hash du mot de passe',
	'Class:ApplicationSolution/Attribute:auth_complexite_mdp' => 'Politique de complexité du mot de passe',
	'Class:ApplicationSolution/Attribute:auth_pol_exp_mdp' => 'Politique d\'expiration du mot de passe',
	'Class:ApplicationSolution/Attribute:auth_pol_modif_mdp' => 'Politique de modification du mdp (1ère connexion)',
	'Class:ApplicationSolution/Attribute:auth_sensibilisation_chgt_mdp' => 'Sensibilisation du changement de mot de passe',
	'Class:ApplicationSolution/Attribute:auth_nettoyage_compte' => 'Nettoyage des comptes inactifs/fermés',
	'Class:ApplicationSolution/Attribute:auth_mesure_protection' => 'Mesures de protection (anti brute-force / captcha...)',
	'Class:ApplicationSolution/Attribute:auth_commentaire' => 'Commentaire concernant l\'authentification',
	'ApplicationSolution:info' => 'Informations générales',
	'ApplicationSolution:auth_info' => 'Authentification',
	'ApplicationSolution:description' => 'Informations détaillées',
	'UI:ArchiTab' => 'Cartographie',
	'Class:PhysicalDevice/Attribute:status/Value:hors_service' => 'HS',
    'Class:PhysicalDevice/Attribute:status/Value:hors_service+' => 'HS',
	'Class:PhysicalDevice/Attribute:status/Value:sortie_inventaire' => 'Sortie d\'inventaire',
    'Class:PhysicalDevice/Attribute:status/Value:sortie_inventaire+' => 'Sortie d\'inventaire',
	'Class:PhysicalDevice/Attribute:date_sortie' => 'Date de sortie d\'inventaire',
	'Class:PhysicalDevice/Attribute:asset_number' => 'Numéro d\'immobilisation',
    'Class:Monitor' => 'Ecran',
        'Class:Monitor+' => 'Ecran d\'ordinateur',
        'Class:Monitor/Attribute:technology' => 'Technologie',
        'Class:Monitor/Attribute:technology+' => 'Technologie d\'affichage',
        'Class:Monitor/Attribute:technology/Value:crt' => 'CRT',
	'Class:Monitor/Attribute:technology/Value:lcd' => 'LCD',
    'Class:Model/Attribute:type/Value:Monitor' => 'Ecran',
));

?>
