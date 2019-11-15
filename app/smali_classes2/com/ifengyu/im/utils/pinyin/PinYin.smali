.class public Lcom/ifengyu/im/utils/pinyin/PinYin;
.super Ljava/lang/Object;
.source "PinYin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPinYin(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3;->getInstance()Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->clear()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;

    const/4 v1, 0x2

    iget v5, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->type:I

    if-ne v1, v5, :cond_1

    iget-object v1, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenPinyinList:Ljava/util/List;

    iget-object v5, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->target:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenFirstChars:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->target:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenFirstChars:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_1
    iget-object v5, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->source:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, v0, Lcom/ifengyu/im/utils/pinyin/HanziToPinyin3$Token;->source:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenPinyinList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenFirstChars:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenFirstChars:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_3

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iput-object v0, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->pinyin:Ljava/lang/String;

    return-void
.end method
