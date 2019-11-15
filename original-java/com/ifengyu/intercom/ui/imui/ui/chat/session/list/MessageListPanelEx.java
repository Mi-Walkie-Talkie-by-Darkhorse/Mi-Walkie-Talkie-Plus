package com.ifengyu.intercom.ui.imui.ui.chat.session.list;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;
import android.view.View;
import android.widget.ImageView;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.services.MessageObserverHelper;
import com.ifengyu.im.imservice.services.MessageObserverHelper.MessageObserver;
import com.ifengyu.im.imservice.services.MessageService;
import com.ifengyu.im.protobuf.helper.MessageParseEngine;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.list.MsgAdapter.ViewHolderEventListener;
import com.ifengyu.library.widget.recyclerview.adapter.BaseFetchLoadAdapter;
import com.ifengyu.library.widget.recyclerview.adapter.BaseFetchLoadAdapter.b;
import com.ifengyu.library.widget.recyclerview.adapter.c;
import com.ifengyu.library.widget.recyclerview.e.a;
import io.reactivex.b.f;
import io.reactivex.k;
import io.reactivex.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class MessageListPanelEx {
    private static Comparator<MessageEntity> comp = MessageListPanelEx$$Lambda$1.$instance;
    /* access modifiers changed from: private */
    public MsgAdapter adapter;
    /* access modifiers changed from: private */
    public Container container;
    /* access modifiers changed from: private */
    public List<MessageEntity> items;
    private a listener = new a() {
        public void onItemClick(c cVar, View view, int i) {
        }

        public void onItemChildClick(c cVar, View view, int i) {
        }

        public void onItemLongClick(c cVar, View view, int i) {
        }
    };
    private ImageView listviewBk;
    private ViewHolderEventListener mHolderEventListener = new ViewHolderEventListener() {
        public boolean onViewHolderLongClick(View view, View view2, MessageEntity messageEntity) {
            return false;
        }

        public void onFailedBtnClick(MessageEntity messageEntity) {
        }

        public void onFooterClick(MessageEntity messageEntity) {
        }

        public void onAvatarClick(Context context, MessageEntity messageEntity) {
            MessageListPanelEx.this.container.proxy.onAvatarClick(context, messageEntity);
        }
    };
    /* access modifiers changed from: private */
    public MessageLoader mLoader;
    private MessageObserver mMessageObserver = new MessageObserver() {
        public void onInitSuccess() {
        }

        public void onReceiveMessage(MessageEntity messageEntity) {
            if (MessageListPanelEx.this.container.sessionId.equals(messageEntity.getPeerId(false)) && MessageListPanelEx.this.container.sessionType == messageEntity.getSessionType()) {
                MessageListPanelEx.this.onIncomingMessage(messageEntity);
            }
        }

        public void onReceiveOldGroupMessage(List<MessageEntity> list) {
            MessageListPanelEx.this.mLoader.onMessageLoaded(list);
        }

        public void onMessageStatusChange(MessageEntity messageEntity) {
            int indexOf = MessageListPanelEx.this.items.indexOf(messageEntity);
            if (indexOf >= 0 && indexOf < MessageListPanelEx.this.items.size()) {
                ((MessageEntity) MessageListPanelEx.this.items.get(indexOf)).setStatus(messageEntity.getStatus());
                MessageListPanelEx.this.adapter.notifyDataItemChanged(indexOf);
            }
        }

        public void onMessageDownloaded(MessageEntity messageEntity) {
            int indexOf = MessageListPanelEx.this.items.indexOf(messageEntity);
            if (indexOf >= 0 && indexOf < MessageListPanelEx.this.items.size()) {
                ((MessageEntity) MessageListPanelEx.this.items.get(indexOf)).setAttachment(messageEntity.getAttachment());
            }
        }
    };
    private RecyclerView messageListView;
    private boolean recordOnly;
    private boolean remote;
    private View rootView;

    public class MessageLoader implements BaseFetchLoadAdapter.a, b {
        private MessageEntity anchor;
        private boolean firstLoad = true;
        private int loadMsgCount = 20;
        private boolean remote;

        public MessageLoader(MessageEntity messageEntity, boolean z) {
            this.anchor = messageEntity;
            this.remote = z;
            if (z) {
                loadFromRemote();
            } else if (messageEntity == null) {
                loadFromLocal();
            } else {
                loadAnchorContext();
            }
        }

        private void loadAnchorContext() {
        }

        @SuppressLint({"CheckResult"})
        private void loadFromLocal() {
            long currentTimeMillis;
            if (MessageListPanelEx.this.adapter.getDataSize() > 0) {
                currentTimeMillis = ((MessageEntity) MessageListPanelEx.this.adapter.getItem(0)).getTime();
            } else {
                currentTimeMillis = System.currentTimeMillis();
            }
            k.defer(new MessageListPanelEx$MessageLoader$$Lambda$1(this, currentTimeMillis)).map(MessageListPanelEx$MessageLoader$$Lambda$0.$instance).toList().a(MessageListPanelEx$MessageLoader$$Lambda$2.$instance).b(io.reactivex.e.a.b()).a(io.reactivex.a.b.a.a()).a((f<? super T>) new MessageListPanelEx$MessageLoader$$Lambda$3<Object>(this));
        }

        static final /* synthetic */ MessageEntity lambda$loadFromLocal$0$MessageListPanelEx$MessageLoader(MessageEntity messageEntity) throws Exception {
            if (messageEntity.getMsgType() == 0) {
                return MessageParseEngine.parseGroupNotifyMsg(messageEntity);
            }
            return messageEntity;
        }

        /* access modifiers changed from: 0000 */
        public final /* synthetic */ o lambda$loadFromLocal$1$MessageListPanelEx$MessageLoader(long j) throws Exception {
            return k.fromIterable(MessageService.instance().loadHistoryMsg(MessageListPanelEx.this.container.sessionType, MessageListPanelEx.this.container.sessionId, j, this.loadMsgCount));
        }

        private void loadFromRemote() {
        }

        public void onMessageLoaded(List<MessageEntity> list) {
            if (list != null) {
                boolean z = list.size() < this.loadMsgCount;
                if (this.remote) {
                    Collections.reverse(list);
                }
                if (this.firstLoad && MessageListPanelEx.this.items.size() > 0) {
                    for (MessageEntity messageEntity : list) {
                        Iterator it = MessageListPanelEx.this.items.iterator();
                        int i = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (((MessageEntity) it.next()).isTheSame(messageEntity)) {
                                MessageListPanelEx.this.adapter.remove(i);
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                }
                if (this.firstLoad && this.anchor != null) {
                    list.add(this.anchor);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(MessageListPanelEx.this.items);
                arrayList.addAll(0, list);
                MessageListPanelEx.this.adapter.updateShowTimeItem(arrayList, true, this.firstLoad);
                if (z) {
                    MessageListPanelEx.this.adapter.fetchMoreEnd(list, true);
                } else {
                    MessageListPanelEx.this.adapter.fetchMoreComplete(list);
                }
                if (this.firstLoad) {
                    MessageListPanelEx.this.doScrollToBottom();
                }
                this.firstLoad = false;
            }
        }

        public void onFetchMoreRequested() {
            if (this.remote) {
                loadFromRemote();
            } else {
                loadFromLocal();
            }
        }

        public void onLoadMoreRequested() {
            if (!this.remote) {
                loadFromLocal();
            }
        }
    }

    public MessageListPanelEx(Container container2, View view, MessageEntity messageEntity, boolean z, boolean z2) {
        this.container = container2;
        this.rootView = view;
        this.recordOnly = z;
        this.remote = z2;
        init(messageEntity);
    }

    private void init(MessageEntity messageEntity) {
        initListView(messageEntity);
        registerObservers();
        initFetchLoadListener(messageEntity);
    }

    private void registerObservers() {
        MessageObserverHelper.getInstance().registerObserver(this.mMessageObserver);
    }

    public void onDestroy() {
        MessageObserverHelper.getInstance().unregisterObserver(this.mMessageObserver);
    }

    public void reload(Container container2, MessageEntity messageEntity) {
        this.container = container2;
        if (this.adapter != null) {
            this.adapter.clearData();
        }
        initFetchLoadListener(messageEntity);
    }

    public void initFetchLoadListener(MessageEntity messageEntity) {
        this.mLoader = new MessageLoader(messageEntity, this.remote);
        if (!this.recordOnly || this.remote) {
            this.adapter.setOnFetchMoreListener(this.mLoader);
            return;
        }
        this.adapter.setOnFetchMoreListener(this.mLoader);
        this.adapter.setOnLoadMoreListener(this.mLoader);
    }

    private void initListView(MessageEntity messageEntity) {
        this.messageListView = (RecyclerView) this.rootView.findViewById(R.id.rv_message_list);
        this.messageListView.setLayoutManager(new LinearLayoutManager(this.container.activity));
        this.messageListView.requestDisallowInterceptTouchEvent(true);
        this.messageListView.addOnScrollListener(new OnScrollListener() {
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
                if (i != 0) {
                    MessageListPanelEx.this.container.proxy.shouldCollapseInputPanel();
                }
            }
        });
        this.messageListView.setOverScrollMode(2);
        this.items = new ArrayList();
        this.adapter = new MsgAdapter(this.messageListView, this.items, this.container);
        this.adapter.setFetchMoreView(new com.ifengyu.library.widget.recyclerview.f.b());
        this.adapter.setLoadMoreView(new com.ifengyu.library.widget.recyclerview.f.b());
        this.adapter.setEventListener(this.mHolderEventListener);
        this.messageListView.setAdapter(this.adapter);
        this.messageListView.addOnItemTouchListener(this.listener);
    }

    public void onMsgSend(MessageEntity messageEntity) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(messageEntity);
        this.adapter.updateShowTimeItem(arrayList, false, true);
        this.adapter.appendData(messageEntity);
        doScrollToBottom();
    }

    /* access modifiers changed from: private */
    public void doScrollToBottom() {
        this.messageListView.scrollToPosition(this.adapter.getBottomDataPosition());
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$refreshMessageList$0$MessageListPanelEx() {
        this.adapter.notifyDataSetChanged();
    }

    public void refreshMessageList() {
        this.container.activity.runOnUiThread(new MessageListPanelEx$$Lambda$0(this));
    }

    public void onIncomingMessage(MessageEntity messageEntity) {
        boolean z;
        boolean isLastMessageVisible = isLastMessageVisible();
        if (isMyMessage(messageEntity)) {
            this.items.add(messageEntity);
            z = true;
        } else {
            z = false;
        }
        if (z) {
            sortMessages(this.items);
            this.adapter.notifyDataSetChanged();
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(messageEntity);
        this.adapter.updateShowTimeItem(arrayList, false, true);
        if (isMyMessage(messageEntity) && isLastMessageVisible) {
            doScrollToBottom();
        }
    }

    private boolean isLastMessageVisible() {
        return ((LinearLayoutManager) this.messageListView.getLayoutManager()).findLastCompletelyVisibleItemPosition() >= this.adapter.getBottomDataPosition();
    }

    public boolean isMyMessage(MessageEntity messageEntity) {
        return true;
    }

    private void sortMessages(List<MessageEntity> list) {
        if (list.size() != 0) {
            Collections.sort(list, comp);
        }
    }

    static final /* synthetic */ int lambda$static$1$MessageListPanelEx(MessageEntity messageEntity, MessageEntity messageEntity2) {
        long time = messageEntity.getTime() - messageEntity2.getTime();
        if (time == 0) {
            return 0;
        }
        return time < 0 ? -1 : 1;
    }

    public MsgAdapter getAdapter() {
        return this.adapter;
    }

    public MessageLoader getLoader() {
        return this.mLoader;
    }

    private void refreshViewHolderByIndex(final int i) {
        this.container.activity.runOnUiThread(new Runnable() {
            public void run() {
                if (i >= 0) {
                    MessageListPanelEx.this.adapter.notifyDataItemChanged(i);
                }
            }
        });
    }

    private int getItemIndex(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.items.size()) {
                return -1;
            }
            if (((MessageEntity) this.items.get(i3)).getMsgId() == ((long) i)) {
                return i3;
            }
            i2 = i3 + 1;
        }
    }
}
