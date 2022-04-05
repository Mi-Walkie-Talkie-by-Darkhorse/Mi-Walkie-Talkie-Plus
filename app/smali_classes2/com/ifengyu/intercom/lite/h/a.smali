.class public final synthetic Lcom/ifengyu/intercom/lite/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/h/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/h/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/h/a;->a:Lcom/ifengyu/intercom/lite/h/a;

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

    check-cast p1, Lcom/ifengyu/intercom/lite/f/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/lite/f/c;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
