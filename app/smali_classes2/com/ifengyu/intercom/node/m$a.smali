.class public Lcom/ifengyu/intercom/node/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/google/protobuf/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/node/m$a;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/node/m$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/node/m$a;)Lcom/google/protobuf/Message;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/node/m$a;->b:Lcom/google/protobuf/Message;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/intercom/node/m$a;
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/node/m$a;->a:I

    return-object p0
.end method

.method public a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/m$a;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/m$a;->b:Lcom/google/protobuf/Message;

    return-object p0
.end method

.method public a()Lcom/ifengyu/intercom/node/m;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/node/m;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/m;-><init>(Lcom/ifengyu/intercom/node/m$a;)V

    return-object v0
.end method
