.class public final synthetic Lcom/ifengyu/talk/f/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcom/ifengyu/talk/f/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/talk/f/m;

    invoke-direct {v0}, Lcom/ifengyu/talk/f/m;-><init>()V

    sput-object v0, Lcom/ifengyu/talk/f/m;->a:Lcom/ifengyu/talk/f/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/ifengyu/talk/f/e0;->l()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
