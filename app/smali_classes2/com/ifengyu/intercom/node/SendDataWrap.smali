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
.field public a:Lcom/google/protobuf/Message;

.field public b:[B

.field public c:[B

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(ILcom/google/protobuf/Message;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->d:I

    iput-object p2, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    iput p3, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->e:I

    return-void
.end method

.method private constructor <init>(ILcom/google/protobuf/Message;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->d:I

    iput-object p2, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->a:Lcom/google/protobuf/Message;

    iput p3, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->e:I

    iput-object p4, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->c:[B

    return-void
.end method

.method private constructor <init>(I[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->d:I

    iput-object p2, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->b:[B

    iput p3, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->e:I

    return-void
.end method

.method public static a(ILcom/google/protobuf/Message;I)Lcom/ifengyu/intercom/node/SendDataWrap;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/SendDataWrap;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/node/SendDataWrap;-><init>(ILcom/google/protobuf/Message;I)V

    return-object v0
.end method

.method public static a(I[BI)Lcom/ifengyu/intercom/node/SendDataWrap;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/SendDataWrap;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/intercom/node/SendDataWrap;-><init>(I[BI)V

    return-object v0
.end method

.method public static a([B)Lcom/ifengyu/intercom/node/SendDataWrap;
    .locals 4

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

    iget v0, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->e:I

    return v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->b:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/SendDataWrap;->d:I

    return v0
.end method
