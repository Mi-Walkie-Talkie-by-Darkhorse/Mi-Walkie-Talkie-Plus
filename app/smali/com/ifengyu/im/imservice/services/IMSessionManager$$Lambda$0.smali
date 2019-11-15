.class final synthetic Lcom/ifengyu/im/imservice/services/IMSessionManager$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final $instance:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$$Lambda$0;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager$$Lambda$0;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$$Lambda$0;->$instance:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    check-cast p2, Lcom/ifengyu/im/imservice/entity/RecentInfo;

    invoke-static {p1, p2}, Lcom/ifengyu/im/imservice/services/IMSessionManager;->lambda$sort$0$IMSessionManager(Lcom/ifengyu/im/imservice/entity/RecentInfo;Lcom/ifengyu/im/imservice/entity/RecentInfo;)I

    move-result v0

    return v0
.end method
