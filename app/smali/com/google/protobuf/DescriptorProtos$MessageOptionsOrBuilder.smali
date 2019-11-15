.class public interface abstract Lcom/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageOptionsOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDeprecated()Z
.end method

.method public abstract getMessageSetWireFormat()Z
.end method

.method public abstract getNoStandardDescriptorAccessor()Z
.end method

.method public abstract getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
.end method

.method public abstract getUninterpretedOptionCount()I
.end method

.method public abstract getUninterpretedOptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
.end method

.method public abstract getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDeprecated()Z
.end method

.method public abstract hasMessageSetWireFormat()Z
.end method

.method public abstract hasNoStandardDescriptorAccessor()Z
.end method
