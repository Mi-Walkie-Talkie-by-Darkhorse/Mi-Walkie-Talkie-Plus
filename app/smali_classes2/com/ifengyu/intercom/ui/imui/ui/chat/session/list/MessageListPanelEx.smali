.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;
.super Ljava/lang/Object;
.source "MessageListPanelEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;
    }
.end annotation


# static fields
.field private static comp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

.field private container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/ifengyu/library/widget/recyclerview/e/a;

.field private listviewBk:Landroid/widget/ImageView;

.field private mHolderEventListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

.field private mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

.field private mMessageObserver:Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

.field private messageListView:Landroid/support/v7/widget/RecyclerView;

.field private recordOnly:Z

.field private remote:Z

.field private rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$1;->$instance:Ljava/util/Comparator;

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->comp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;Landroid/view/View;Lcom/ifengyu/im/imservice/model/MessageEntity;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mMessageObserver:Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->listener:Lcom/ifengyu/library/widget/recyclerview/e/a;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mHolderEventListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->rootView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->recordOnly:Z

    iput-boolean p5, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->remote:Z

    invoke-direct {p0, p3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->init(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->doScrollToBottom()V

    return-void
.end method

.method private doScrollToBottom()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getBottomDataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private getItemIndex(I)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgId()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private init(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->initListView(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->registerObservers()V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->initFetchLoadListener(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method private initListView(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->rootView:Landroid/view/View;

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    new-instance v1, Lcom/ifengyu/library/widget/recyclerview/f/b;

    invoke-direct {v1}, Lcom/ifengyu/library/widget/recyclerview/f/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setFetchMoreView(Lcom/ifengyu/library/widget/recyclerview/f/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    new-instance v1, Lcom/ifengyu/library/widget/recyclerview/f/b;

    invoke-direct {v1}, Lcom/ifengyu/library/widget/recyclerview/f/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setLoadMoreView(Lcom/ifengyu/library/widget/recyclerview/f/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mHolderEventListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setEventListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->listener:Lcom/ifengyu/library/widget/recyclerview/e/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private isLastMessageVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->messageListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->getBottomDataPosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final synthetic lambda$static$1$MessageListPanelEx(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/im/imservice/model/MessageEntity;)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshViewHolderByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$5;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerObservers()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mMessageObserver:Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->registerObserver(Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;)V

    return-void
.end method

.method private sortMessages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->comp:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    return-object v0
.end method

.method public getLoader()Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    return-object v0
.end method

.method public initFetchLoadListener(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->remote:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;Lcom/ifengyu/im/imservice/model/MessageEntity;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->recordOnly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->remote:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setOnFetchMoreListener(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setOnLoadMoreListener(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mLoader:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$MessageLoader;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->setOnFetchMoreListener(Lcom/ifengyu/library/widget/recyclerview/adapter/BaseFetchLoadAdapter$a;)V

    goto :goto_0
.end method

.method public isMyMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$refreshMessageList$0$MessageListPanelEx()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->getInstance()Lcom/ifengyu/im/imservice/services/MessageObserverHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->mMessageObserver:Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/imservice/services/MessageObserverHelper;->unregisterObserver(Lcom/ifengyu/im/imservice/services/MessageObserverHelper$MessageObserver;)V

    return-void
.end method

.method public onIncomingMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->isLastMessageVisible()Z

    move-result v3

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->isMyMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->sortMessages(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->notifyDataSetChanged()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v4, v0, v2, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->updateShowTimeItem(Ljava/util/List;ZZ)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->isMyMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->doScrollToBottom()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onMsgSend(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->updateShowTimeItem(Ljava/util/List;ZZ)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->appendData(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->doScrollToBottom()V

    return-void
.end method

.method public refreshMessageList()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reload(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->container:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/Container;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->adapter:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;->clearData()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MessageListPanelEx;->initFetchLoadListener(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method
