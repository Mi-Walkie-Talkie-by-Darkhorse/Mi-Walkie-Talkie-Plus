.class Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;
.super Ljava/lang/Object;
.source "BT_PUBLIC_MSG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Counter"
.end annotation


# static fields
.field private static nextValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;->nextValue:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;->nextValue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG$Counter;->nextValue:I

    return p0
.end method
