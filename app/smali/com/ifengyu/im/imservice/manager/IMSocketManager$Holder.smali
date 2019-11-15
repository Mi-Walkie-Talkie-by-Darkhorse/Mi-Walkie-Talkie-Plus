.class final Lcom/ifengyu/im/imservice/manager/IMSocketManager$Holder;
.super Ljava/lang/Object;
.source "IMSocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/manager/IMSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ifengyu/im/imservice/manager/IMSocketManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ifengyu/im/imservice/manager/IMSocketManager;-><init>(Lcom/ifengyu/im/imservice/manager/IMSocketManager$1;)V

    sput-object v0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ifengyu/im/imservice/manager/IMSocketManager;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/manager/IMSocketManager$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/manager/IMSocketManager;

    return-object v0
.end method
