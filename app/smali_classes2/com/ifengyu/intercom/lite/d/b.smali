.class public final synthetic Lcom/ifengyu/intercom/lite/d/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/d/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/d/b;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/d/b;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/d/b;->a:Lcom/ifengyu/intercom/lite/d/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/d/f;->a(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
