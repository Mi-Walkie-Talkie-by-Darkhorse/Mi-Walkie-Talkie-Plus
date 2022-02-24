.class public Lcom/ifengyu/intercom/node/SendDataWrap;
.super Ljava/lang/Object;
.source "SendDataWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/SendDataWrap$DeviceType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field public c:Lcom/google/protobuf/Message;

.field public d:[B

.field public e:[B


# direct methods
.method private constructor <init>(ILcom/google/protobuf/Message;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->a:I

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    .line 4
    iput p3, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->b:I

    return-void
.end method

.method private constructor <init>(ILcom/google/protobuf/Message;I[B)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->a:I

    .line 11
    iput-object p2, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->c:Lcom/google/protobuf/Message;

    .line 12
    iput p3, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->b:I

    .line 13
    iput-object p4, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->e:[B

    return-void
.end method

.method private constructor <init>(I[BI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->a:I

    .line 7
    iput-object p2, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->d:[B

    .line 8
    iput p3, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->b:I

    return-void
.end method

.method public static a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/node/SendDataWrap;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/node/SendDataWrap;-><init>(ILcom/google/protobuf/Message;I)V

    return-object v0
.end method

.method public static a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;
    .locals 1

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/node/SendDataWrap;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/node/SendDataWrap;-><init>(I[BI)V

    return-object v0
.end method

.method public static a([B)Lcom/ifengyu/intercom/node/SendDataWrap;
    .locals 4

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/node/SendDataWrap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/ifengyu/intercom/node/SendDataWrap;-><init>(ILcom/google/protobuf/Message;I[B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->a:I

    return v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->d:[B

    return-object v0
.end method
