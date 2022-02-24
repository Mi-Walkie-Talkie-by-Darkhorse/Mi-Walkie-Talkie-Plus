.class public Lcom/ifengyu/intercom/node/a;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# instance fields
.field private final a:I

.field private final b:Lcom/google/protobuf/Message;


# direct methods
.method public constructor <init>(ILcom/google/protobuf/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/node/a;->a:I

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/node/a;->b:Lcom/google/protobuf/Message;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/node/a;->a:I

    return v0
.end method

.method public b()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/a;->b:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/node/a;->b:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
