.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->N(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
