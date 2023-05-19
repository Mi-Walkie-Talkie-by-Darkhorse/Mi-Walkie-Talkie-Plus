.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/a;

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

    check-cast p1, Lcom/ifengyu/library/http/entity/NewHttpResult;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->k2(Lcom/ifengyu/library/http/entity/NewHttpResult;)V

    return-void
.end method
