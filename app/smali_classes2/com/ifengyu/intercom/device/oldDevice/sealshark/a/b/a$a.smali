.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;
.super Ljava/lang/Object;
.source "SealCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;)Lcom/google/protobuf/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->b:Lcom/google/protobuf/Message;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;)V

    return-object v0
.end method

.method public d(I)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->a:I

    return-object p0
.end method

.method public e(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/a/b/a$a;->b:Lcom/google/protobuf/Message;

    return-object p0
.end method
