.class final Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest$1;
.super Lcom/google/protobuf/AbstractParser;
.source "BCKS3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser",
        "<",
        "Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/BCKS3$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/BCKS3$ReuseRequest;

    move-result-object v0

    return-object v0
.end method