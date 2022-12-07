# Clone/Fetch Upstream Device Dependencies
# Fix source
echo "Fix source"
cd frameworks/native
git fetch https://github.com/CrisBalGreece/android_frameworks_native 12
git cherry-pick af6c19edbddf7c39f42368007cbfc3422d7493c1
cd ../..
rm -rf system/bpf
rm -rf system/netd
git clone https://github.com/mitoaprendiz/platform_system_bpf -b lineage-19.1 system/bpf
git clone https://github.com/mitoaprendiz/platform_system_netd -b lineage-19.1 system/netd
echo ""