.class public final synthetic Lcom/ifengyu/intercom/lite/login/l;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/login/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/login/l;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/login/l;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/login/l;->a:Lcom/ifengyu/intercom/lite/login/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
