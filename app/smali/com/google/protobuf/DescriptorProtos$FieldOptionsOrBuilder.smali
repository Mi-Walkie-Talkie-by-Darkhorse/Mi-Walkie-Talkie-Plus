.class public interface abstract Lcom/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;
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
    name = "FieldOptionsOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCtype()Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;
.end method

.method public abstract getDeprecated()Z
.end method

.method public abstract getExperimentalMapKey()Ljava/lang/String;
.end method

.method public abstract getExperimentalMapKeyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLazy()Z
.end method

.method public abstract getPacked()Z
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

.method public abstract getWeak()Z
.end method

.method public abstract hasCtype()Z
.end method

.method public abstract hasDeprecated()Z
.end method

.method public abstract hasExperimentalMapKey()Z
.end method

.method public abstract hasLazy()Z
.end method

.method public abstract hasPacked()Z
.end method

.method public abstract hasWeak()Z
.end method
