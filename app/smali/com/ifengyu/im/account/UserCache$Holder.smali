.class final Lcom/ifengyu/im/account/UserCache$Holder;
.super Ljava/lang/Object;
.source "UserCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/account/UserCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ifengyu/im/account/UserCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/account/UserCache;

    invoke-direct {v0}, Lcom/ifengyu/im/account/UserCache;-><init>()V

    sput-object v0, Lcom/ifengyu/im/account/UserCache$Holder;->INSTANCE:Lcom/ifengyu/im/account/UserCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ifengyu/im/account/UserCache;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/account/UserCache$Holder;->INSTANCE:Lcom/ifengyu/im/account/UserCache;

    return-object v0
.end method
