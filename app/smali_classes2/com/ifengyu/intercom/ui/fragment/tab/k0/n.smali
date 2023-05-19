.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->A(Lcom/ifengyu/talk/models/RecentTalkModel;)Lcom/ifengyu/talk/models/RecentTalkModel;

    return-object p1
.end method
