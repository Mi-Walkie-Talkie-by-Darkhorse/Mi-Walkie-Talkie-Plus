package com.ifengyu.intercom;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.ifengyu.intercom.p188k.ChannelListEveryTypeBindingImpl;
import com.ifengyu.intercom.p188k.ConfigFileListFragmentBindingImpl;
import com.ifengyu.intercom.p188k.FragmentConfigFileDetailBindingImpl;
import com.ifengyu.intercom.p188k.FragmentFirmwareSetBindingImpl;
import com.ifengyu.intercom.p188k.FragmentFirmwareUpgradeBindingImpl;
import com.ifengyu.intercom.p188k.FragmentMi3ChannelEditBindingImpl;
import com.ifengyu.intercom.p188k.FragmentMi3CustomListBindingImpl;
import com.ifengyu.intercom.p188k.FragmentMi3RemoteListBindingImpl;
import com.ifengyu.intercom.p188k.FragmentMi3SettingBindingImpl;
import com.ifengyu.intercom.p188k.FragmentMi3ShareLocationBindingImpl;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    private static final SparseIntArray f12084a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(10);
        f12084a = sparseIntArray;
        sparseIntArray.put(R.layout.channel_list_every_type, 1);
        sparseIntArray.put(R.layout.config_file_list_fragment, 2);
        sparseIntArray.put(R.layout.fragment_config_file_detail, 3);
        sparseIntArray.put(R.layout.fragment_firmware_set, 4);
        sparseIntArray.put(R.layout.fragment_firmware_upgrade, 5);
        sparseIntArray.put(R.layout.fragment_mi3_channel_edit, 6);
        sparseIntArray.put(R.layout.fragment_mi3_custom_list, 7);
        sparseIntArray.put(R.layout.fragment_mi3_remote_list, 8);
        sparseIntArray.put(R.layout.fragment_mi3_setting, 9);
        sparseIntArray.put(R.layout.fragment_mi3_share_location, 10);
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: a */
    public List<DataBinderMapper> mo14312a() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.chad.library.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: b */
    public ViewDataBinding mo14311b(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f12084a.get(i);
        if (i2 > 0) {
            Object tag = view.getTag();
            if (tag != null) {
                switch (i2) {
                    case 1:
                        if ("layout/channel_list_every_type_0".equals(tag)) {
                            return new ChannelListEveryTypeBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for channel_list_every_type is invalid. Received: " + tag);
                    case 2:
                        if ("layout/config_file_list_fragment_0".equals(tag)) {
                            return new ConfigFileListFragmentBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for config_file_list_fragment is invalid. Received: " + tag);
                    case 3:
                        if ("layout/fragment_config_file_detail_0".equals(tag)) {
                            return new FragmentConfigFileDetailBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_config_file_detail is invalid. Received: " + tag);
                    case 4:
                        if ("layout/fragment_firmware_set_0".equals(tag)) {
                            return new FragmentFirmwareSetBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_firmware_set is invalid. Received: " + tag);
                    case 5:
                        if ("layout/fragment_firmware_upgrade_0".equals(tag)) {
                            return new FragmentFirmwareUpgradeBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_firmware_upgrade is invalid. Received: " + tag);
                    case 6:
                        if ("layout/fragment_mi3_channel_edit_0".equals(tag)) {
                            return new FragmentMi3ChannelEditBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_mi3_channel_edit is invalid. Received: " + tag);
                    case 7:
                        if ("layout/fragment_mi3_custom_list_0".equals(tag)) {
                            return new FragmentMi3CustomListBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_mi3_custom_list is invalid. Received: " + tag);
                    case 8:
                        if ("layout/fragment_mi3_remote_list_0".equals(tag)) {
                            return new FragmentMi3RemoteListBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_mi3_remote_list is invalid. Received: " + tag);
                    case 9:
                        if ("layout/fragment_mi3_setting_0".equals(tag)) {
                            return new FragmentMi3SettingBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_mi3_setting is invalid. Received: " + tag);
                    case 10:
                        if ("layout/fragment_mi3_share_location_0".equals(tag)) {
                            return new FragmentMi3ShareLocationBindingImpl(dataBindingComponent, view);
                        }
                        throw new IllegalArgumentException("The tag for fragment_mi3_share_location is invalid. Received: " + tag);
                    default:
                        return null;
                }
            }
            throw new RuntimeException("view must have a tag");
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    /* renamed from: c */
    public ViewDataBinding mo14310c(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f12084a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
