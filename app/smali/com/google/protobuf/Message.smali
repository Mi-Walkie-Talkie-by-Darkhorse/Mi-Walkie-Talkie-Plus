.class public interface abstract Lcom/google/protobuf/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/google/protobuf/MessageLite;
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Message$Builder;
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getParserForType()Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "+",
            "Lcom/google/protobuf/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract newBuilderForType()Lcom/google/protobuf/Message$Builder;
.end method

.method public abstract toBuilder()Lcom/google/protobuf/Message$Builder;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
