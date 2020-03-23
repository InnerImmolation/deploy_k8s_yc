$node_list = 'master-node-yc-cluster', 'slave-1-yc-cluster', 'slave-2-yc-cluster', 'slave-3-yc-cluster'
$zone = 'ru-central1-a'
$network_interface = 'subnet-name=default-ru-central1-a'
$boot_disk =  'image-folder-id=standard-images,image-family=ubuntu-1604-lts'
$ssh_key = 'C:\Users\dmitry.dubovtsev\Downloads\Telegram Desktop\yc_pub_key'
$cores = 2
$memory = 4


foreach ($current_node in $node_list) {
    if ($current_node -like 'master*') {
      $network_interface = 'subnet-name=default-ru-central1-a,nat-ip-version=ipv4'
    }

     yc compute instance create `
         --name $current_node `
        --zone $zone `
        --network-interface  $network_interface `
        --preemptible `
        --create-boot-disk $boot_disk `
        --ssh-key $ssh_key `
        --cores $cores `
        --memory $memory

     $network_interface = 'subnet-name=default-ru-central1-a'
}