.class public final synthetic Lcom/ifengyu/intercom/lite/h/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic a:Lcom/ifengyu/intercom/lite/h/d0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/h/d0;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/h/d0;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/lite/h/d0;->a:Lcom/ifengyu/intercom/lite/h/d0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
