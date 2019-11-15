package com.ifengyu.intercom.ui.setting.dolphin.fragment;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.m;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.eventbus.StateUpdateEvent;
import com.ifengyu.intercom.greendao.dao.UserChannelDao;
import com.ifengyu.intercom.greendao.dao.UserChannelDao.Properties;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.MitalkProtos.CHOPTION;
import com.ifengyu.intercom.protos.MitalkProtos.CHTYPE;
import com.ifengyu.intercom.ui.adapter.WrapContentLinearLayoutManager;
import com.ifengyu.intercom.ui.adapter.i;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.setting.dolphin.DolphinCHSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.d;
import com.ifengyu.intercom.ui.widget.dialog.o;
import com.ifengyu.intercom.ui.widget.dialog.p;
import com.ifengyu.intercom.ui.widget.dialog.x;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.squareup.otto.Subscribe;
import com.zhy.a.a.a.c;
import com.zhy.a.a.c.a;
import java.util.ArrayList;
import java.util.List;

public class DolphinCustomFragment extends DolphinChannelBaseFragment {
    private static final String g = DolphinCustomFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public List<UserChannel> h = new ArrayList();
    /* access modifiers changed from: private */
    public UserChannelDao i = MiTalkiApp.a().b().g();
    /* access modifiers changed from: private */
    public MiTalkiApp j = MiTalkiApp.a();
    /* access modifiers changed from: private */
    public DolphinCHSettingActivity k;
    /* access modifiers changed from: private */
    public UserChannel l;
    /* access modifiers changed from: private */
    public int m = -1;
    @BindView(2131755577)
    ProgressBar mProgressBar;
    @BindView(2131755576)
    RecyclerViewEmptySupport mRvCustom;
    @BindView(2131755370)
    TextView mTvEmptyView;
    private int n = 0;
    private List<UserChannel> o = new ArrayList();
    /* access modifiers changed from: private */
    public a p;

    public static DolphinCustomFragment a(boolean z, int i2) {
        DolphinCustomFragment dolphinCustomFragment = new DolphinCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i2);
        dolphinCustomFragment.setArguments(bundle);
        return dolphinCustomFragment;
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        if (this.k == null || this.k.c() == 1) {
            s.b(g, "custom fragment receiveChannelResponse");
            a(stateUpdateEvent);
        }
    }

    public void a() {
        if (!w.ag()) {
            v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        e.b().execute(new Runnable() {
            public void run() {
                DolphinCustomFragment.this.h.clear();
                List c = DolphinCustomFragment.this.i.queryBuilder().a(Properties.a.d(Integer.valueOf(0)), Properties.a.c(Integer.valueOf(20))).c();
                DolphinCustomFragment.this.h.clear();
                DolphinCustomFragment.this.h.addAll(c);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        if (DolphinCustomFragment.this.mRvCustom != null && !DolphinCustomFragment.this.j.d()) {
                            DolphinCustomFragment.this.mRvCustom.setEmptyView(DolphinCustomFragment.this.mTvEmptyView);
                        }
                        if (DolphinCustomFragment.this.p != null) {
                            DolphinCustomFragment.this.p.notifyDataSetChanged();
                        }
                    }
                });
            }
        });
        if (this.j.d()) {
            this.mProgressBar.setVisibility(0);
            this.n = 0;
            this.o.clear();
            int i2 = this.n;
            this.n = i2 + 1;
            UserChannel userChannel = new UserChannel(i2, 2, "", 0);
            int i3 = this.n;
            this.n = i3 + 1;
            a(userChannel, new UserChannel(i3, 2, "", 0));
            this.f = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    DolphinCustomFragment.this.f = true;
                    DolphinCustomFragment.this.mProgressBar.setVisibility(8);
                }
            }, 8000);
        } else if (this.d < 16973825) {
            this.mProgressBar.setVisibility(0);
            this.n = 0;
            this.o.clear();
            int i4 = this.n;
            this.n = i4 + 1;
            UserChannel userChannel2 = new UserChannel(i4, 2, "", 0);
            int i5 = this.n;
            this.n = i5 + 1;
            a(userChannel2, new UserChannel(i5, 2, "", 0));
            this.f = false;
            ad.a((Runnable) new Runnable() {
                public void run() {
                    DolphinCustomFragment.this.f = true;
                    DolphinCustomFragment.this.mProgressBar.setVisibility(8);
                }
            }, 8000);
        }
    }

    public void f() {
        if (!k.a().b()) {
            v.a((CharSequence) ad.a((int) R.string.device_not_connected), false);
        } else if (!this.f) {
        } else {
            if (!w.ag()) {
                v.a((CharSequence) ad.a((int) R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.h.size() >= 20) {
                v.a((CharSequence) ad.a((int) R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                i(null);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(StateUpdateEvent stateUpdateEvent) {
        if (this.c) {
            if (!stateUpdateEvent.f()) {
                return;
            }
            if (w.a == 1 && stateUpdateEvent.d().getType() == CHTYPE.RELAY) {
                this.k.a(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
                return;
            }
            this.k.a(m.a(stateUpdateEvent.d()));
        } else if (!stateUpdateEvent.g()) {
        } else {
            if (w.a == 1 && stateUpdateEvent.e().getType() == CHTYPE.RELAY) {
                this.k.a(m.a(stateUpdateEvent.d(), stateUpdateEvent.e()));
                return;
            }
            this.k.a(m.a(stateUpdateEvent.e()));
        }
    }

    /* access modifiers changed from: protected */
    public void c(StateUpdateEvent stateUpdateEvent) {
        if (this.l != null) {
            this.k.b(this.l);
            this.k.a(this.l);
            if (this.p != null) {
                this.p.notifyDataSetChanged();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void f(StateUpdateEvent stateUpdateEvent) {
        s.b(g, "onDeleteChannelSuccess");
        if (this.m != -1) {
            UserChannel userChannel = (UserChannel) this.h.remove(this.m);
            this.p.notifyItemRemoved(this.m);
            this.i.delete(this.l);
        }
    }

    /* access modifiers changed from: protected */
    public void e(StateUpdateEvent stateUpdateEvent) {
        s.b(g, "onModifyChannelSuccess");
        if (this.l != null) {
            int indexOf = this.h.indexOf(this.l);
            if (indexOf != -1) {
                UserChannel userChannel = (UserChannel) this.h.get(indexOf);
                userChannel.a(this.l.d());
                userChannel.c(this.l.e());
                UserChannel d = this.k.d();
                if (d != null && d.equals(this.l)) {
                    this.k.a(this.l);
                }
                this.p.notifyItemChanged(indexOf);
                this.i.insertOrReplace(this.l);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void g(StateUpdateEvent stateUpdateEvent) {
        s.b(g, "onInsertChannelSuccess");
        if (stateUpdateEvent.f()) {
            if (stateUpdateEvent.d().getType() == CHTYPE.USERDEFINE) {
                UserChannel a = m.a(stateUpdateEvent.d());
                int indexOf = this.h.indexOf(a);
                if (indexOf != -1) {
                    UserChannel userChannel = (UserChannel) this.h.get(indexOf);
                    userChannel.c(a.e());
                    userChannel.a(a.d());
                    this.p.notifyItemChanged(indexOf);
                    UserChannel d = this.k.d();
                    if (this.l != null && d.equals(userChannel)) {
                        this.k.b(userChannel);
                        this.k.a(userChannel);
                        return;
                    }
                    return;
                }
                this.h.add(a);
                this.p.notifyItemInserted(this.h.size() - 1);
            }
        } else if (this.l != null) {
            this.h.add(this.l);
            this.p.notifyItemInserted(this.h.size() - 1);
            this.i.insertOrReplace(this.l);
        }
    }

    /* access modifiers changed from: protected */
    public void d(StateUpdateEvent stateUpdateEvent) {
        s.b(g, "onQueryChannelSuccess");
        if (stateUpdateEvent.f()) {
            if (stateUpdateEvent.d().getType() != CHTYPE.RELAY) {
                this.o.add(m.a(stateUpdateEvent.d()));
            } else {
                return;
            }
        }
        if (stateUpdateEvent.g()) {
            if (stateUpdateEvent.d().getType() != CHTYPE.RELAY) {
                this.o.add(m.a(stateUpdateEvent.e()));
            } else {
                return;
            }
        }
        if (this.n >= 20) {
            this.j.b(false);
            this.mProgressBar.setVisibility(8);
            this.mRvCustom.setEmptyView(this.mTvEmptyView);
            this.h.clear();
            this.h.addAll(this.o);
            if (this.p != null) {
                this.p.notifyDataSetChanged();
            }
            e();
            this.f = true;
            return;
        }
        int i2 = this.n;
        this.n = i2 + 1;
        UserChannel userChannel = new UserChannel(i2, 2, "", 0);
        int i3 = this.n;
        this.n = i3 + 1;
        a(userChannel, new UserChannel(i3, 2, "", 0));
    }

    /* access modifiers changed from: protected */
    public void a(CHOPTION choption) {
        super.a(choption);
        this.j.b(false);
        this.mProgressBar.setVisibility(8);
        this.mRvCustom.setEmptyView(this.mTvEmptyView);
        if (this.p != null) {
            this.p.notifyDataSetChanged();
        }
        this.f = true;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_custom, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        this.mRvCustom.setLayoutManager(new WrapContentLinearLayoutManager(getContext()));
        this.p = new a(new i<UserChannel>(getContext(), R.layout.layout_custom_channel_item, this.h) {
            /* access modifiers changed from: protected */
            public void a(final c cVar, final UserChannel userChannel, int i) {
                TextView textView = (TextView) cVar.a(R.id.tv_custom_name);
                TextView textView2 = (TextView) cVar.a(R.id.tv_custom_freq);
                if (DolphinCustomFragment.this.k != null) {
                    if (userChannel.equals(DolphinCustomFragment.this.k.d())) {
                        textView.setTextColor(ad.d(R.color.select_color));
                        textView2.setTextColor(ad.d(R.color.select_color));
                    } else {
                        textView.setTextColor(ad.d(R.color.black80));
                        textView2.setTextColor(ad.d(R.color.black));
                    }
                }
                textView.setText(userChannel.d());
                textView2.setText(v.c(userChannel.e()));
                cVar.itemView.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        DolphinCustomFragment.this.l = userChannel;
                        DolphinCustomFragment.this.a(userChannel);
                    }
                });
                cVar.itemView.setOnLongClickListener(new OnLongClickListener() {
                    public boolean onLongClick(View view) {
                        DolphinCustomFragment.this.m = cVar.getLayoutPosition();
                        DolphinCustomFragment.this.g(userChannel);
                        return true;
                    }
                });
            }
        });
        View view = new View(ad.a());
        view.setLayoutParams(new LayoutParams(-1, (int) v.a(90.0f)));
        view.setBackgroundColor(ad.d(R.color.white));
        this.p.a(view);
        this.mRvCustom.setFootOrHeaderNum(1);
        this.mRvCustom.setAdapter(this.p);
        return inflate;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.k = (DolphinCHSettingActivity) getActivity();
    }

    /* access modifiers changed from: private */
    public void g(final UserChannel userChannel) {
        final d dVar = new d(getActivity());
        dVar.b((int) R.layout.dialog_custom_channel_option).a(true).b();
        View a = dVar.a();
        TextView textView = (TextView) a.findViewById(R.id.afstv_channel_custom_item_option_dialog_title);
        TextView textView2 = (TextView) a.findViewById(R.id.afstv_channel_custom_item_option_dialog_delete);
        TextView textView3 = (TextView) a.findViewById(R.id.afstv_channel_custom_item_option_dialog_rename);
        TextView textView4 = (TextView) a.findViewById(R.id.afstv_channel_custom_item_option_dialog_cancel);
        TextView textView5 = (TextView) a.findViewById(R.id.afstv_channel_custom_item_option_dialog_modify);
        textView.setText(ad.a((int) R.string.channel_custom_s, v.c(userChannel.e())));
        textView2.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                dVar.d();
                DolphinCustomFragment.this.h(userChannel);
            }
        });
        textView3.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                dVar.d();
                DolphinCustomFragment.this.f(userChannel);
            }
        });
        textView5.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                dVar.d();
                DolphinCustomFragment.this.i(userChannel);
            }
        });
        textView4.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                dVar.d();
            }
        });
        dVar.c();
    }

    /* access modifiers changed from: private */
    public void h(final UserChannel userChannel) {
        final d dVar = new d(getActivity());
        dVar.a((int) R.string.common_delete).b((CharSequence) ad.a((int) R.string.dialog_are_you_sure_delete_the_selected_custom_channel, v.c(userChannel.e())));
        dVar.a((int) R.string.common_cancel, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
            }
        }).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dVar.d();
                DolphinCustomFragment.this.l = userChannel;
                DolphinCustomFragment.this.l.a(Long.valueOf((long) userChannel.b()));
                DolphinCustomFragment.this.d(DolphinCustomFragment.this.l);
            }
        }).b().c();
    }

    public void f(final UserChannel userChannel) {
        new x(getActivity(), userChannel.d()).a((x.a) new x.a() {
            public void a(String str) {
                DolphinCustomFragment.this.l = new UserChannel(userChannel.b(), userChannel.c(), str, userChannel.e());
                DolphinCustomFragment.this.l.a(Long.valueOf((long) userChannel.b()));
                DolphinCustomFragment.this.c(DolphinCustomFragment.this.l);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void i(final UserChannel userChannel) {
        o oVar;
        p pVar;
        DolphinCHSettingActivity dolphinCHSettingActivity = (DolphinCHSettingActivity) getActivity();
        if (dolphinCHSettingActivity != null) {
            if (v.a()) {
                if (userChannel != null) {
                    pVar = new p(dolphinCHSettingActivity, v.c(userChannel.e()), 0);
                } else {
                    pVar = new p(dolphinCHSettingActivity, null, 0);
                }
                pVar.a((p.c) new p.c() {
                    public void a(String str) {
                        int a2 = v.a(DolphinCustomFragment.this.h);
                        DolphinCustomFragment.this.l = new UserChannel(a2, 2, ad.a((int) R.string.channel_custom_d, Integer.valueOf(a2 + 1)), v.a(str));
                        DolphinCustomFragment.this.l.a(Long.valueOf((long) a2));
                        DolphinCustomFragment.this.b(DolphinCustomFragment.this.l);
                    }

                    public void b(String str) {
                        if (userChannel != null) {
                            DolphinCustomFragment.this.l = new UserChannel(userChannel.b(), userChannel.c(), userChannel.d(), v.a(str));
                            DolphinCustomFragment.this.l.a(Long.valueOf((long) userChannel.b()));
                            DolphinCustomFragment.this.c(DolphinCustomFragment.this.l);
                        }
                    }
                });
                pVar.show();
                return;
            }
            if (userChannel != null) {
                oVar = new o(dolphinCHSettingActivity, v.c(userChannel.e()), 0);
            } else {
                oVar = new o(dolphinCHSettingActivity, null, 0);
            }
            oVar.a((o.c) new o.c() {
                public void a(String str) {
                    int a2 = v.a(DolphinCustomFragment.this.h);
                    DolphinCustomFragment.this.l = new UserChannel(a2, 2, ad.a((int) R.string.channel_custom_d, Integer.valueOf(a2 + 1)), v.a(str));
                    DolphinCustomFragment.this.l.a(Long.valueOf((long) a2));
                    DolphinCustomFragment.this.b(DolphinCustomFragment.this.l);
                }

                public void b(String str) {
                    if (userChannel != null) {
                        DolphinCustomFragment.this.l = new UserChannel(userChannel.b(), userChannel.c(), userChannel.d(), v.a(str));
                        DolphinCustomFragment.this.l.a(Long.valueOf((long) userChannel.b()));
                        DolphinCustomFragment.this.c(DolphinCustomFragment.this.l);
                    }
                }
            });
            oVar.show();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    /* access modifiers changed from: protected */
    public void b() {
        super.b();
        s.b(g, "onFragmentFirstVisible");
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        super.a(z);
        s.b(g, "onFragmentVisibleChange:" + z);
        if (z) {
            a();
        } else if (this.mProgressBar != null && this.mProgressBar.isShown()) {
            this.mProgressBar.setVisibility(8);
        }
    }
}
