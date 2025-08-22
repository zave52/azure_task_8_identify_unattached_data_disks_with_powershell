#$VirtualMachine = Get-AzVM -ResourceGroupName "mate-azure-task-5" -Name "mate-vm-task-2"
#Remove-AzVMDataDisk -VM $VirtualMachine -Name "mate-disk-task-3"
#Update-AzVM -ResourceGroupName "mate-azure-task-5" -VM $VirtualMachine

$Disks = Get-AzDisk -ResourceGroupName "mate-azure-task-5" | Where-Object {$_.DiskState -eq "Unattached"} | ConvertTo-Json | Out-File -Path "result.json"
