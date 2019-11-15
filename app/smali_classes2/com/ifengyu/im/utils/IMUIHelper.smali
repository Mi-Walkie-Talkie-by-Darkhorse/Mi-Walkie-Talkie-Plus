.class public Lcom/ifengyu/im/utils/IMUIHelper;
.super Ljava/lang/Object;
.source "IMUIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/utils/IMUIHelper$dialogCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getLoginErrorTip(Lcom/ifengyu/im/imservice/event/LoginEvent;)I
    .locals 2

    sget-object v0, Lcom/ifengyu/im/utils/IMUIHelper$2;->$SwitchMap$com$ifengyu$im$imservice$event$LoginEvent:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/event/LoginEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ifengyu/im/R$string;->login_error_unexpected:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/ifengyu/im/R$string;->login_error_general_failed:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/ifengyu/im/R$string;->login_error_unexpected:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRealAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSocketErrorTip(Lcom/ifengyu/im/imservice/event/SocketEvent;)I
    .locals 2

    sget-object v0, Lcom/ifengyu/im/utils/IMUIHelper$2;->$SwitchMap$com$ifengyu$im$imservice$event$SocketEvent:[I

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/event/SocketEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/ifengyu/im/R$string;->login_error_unexpected:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/ifengyu/im/R$string;->connect_msg_server_failed:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/ifengyu/im/R$string;->req_msg_server_addrs_failed:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static handleContactSearch(Ljava/lang/String;Lcom/ifengyu/im/DB/entity/UserEntity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/SearchElement;->reset()V

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleTokenFirstCharsSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleTokenPinyinFullSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/UserEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleNameSearch(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static handleDepartmentSearch(Ljava/lang/String;Lcom/ifengyu/im/DB/entity/DepartmentEntity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/SearchElement;->reset()V

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleTokenFirstCharsSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleTokenPinyinFullSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getDepartName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/DepartmentEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleNameSearch(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static handleGroupSearch(Ljava/lang/String;Lcom/ifengyu/im/DB/entity/GroupEntity;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/entity/SearchElement;->reset()V

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleTokenFirstCharsSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getPinyinElement()Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleTokenPinyinFullSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/im/DB/entity/GroupEntity;->getSearchElement()Lcom/ifengyu/im/imservice/entity/SearchElement;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleNameSearch(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static handleNameSearch(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput v0, p2, Lcom/ifengyu/im/imservice/entity/SearchElement;->startIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/ifengyu/im/imservice/entity/SearchElement;->endIndex:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static handleTokenFirstCharsSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z
    .locals 2

    iget-object v0, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenFirstChars:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ifengyu/im/utils/IMUIHelper;->handleNameSearch(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z

    move-result v0

    return v0
.end method

.method public static handleTokenPinyinFullSearch(Ljava/lang/String;Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;Lcom/ifengyu/im/imservice/entity/SearchElement;)Z
    .locals 12

    const/4 v6, -0x1

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/entity/SearchElement;->reset()V

    iget-object v0, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenPinyinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    move v1, v6

    move v2, v6

    :goto_1
    if-ge v5, v7, :cond_6

    iget-object v0, p1, Lcom/ifengyu/im/utils/pinyin/PinYin$PinYinElement;->tokenPinyinList:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne v2, v6, :cond_4

    move v1, v5

    :goto_2
    add-int/lit8 v0, v5, 0x1

    if-gt v9, v8, :cond_1

    const-string v3, ""

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    if-lez v0, :cond_3

    iput v1, p2, Lcom/ifengyu/im/imservice/entity/SearchElement;->startIndex:I

    iput v0, p2, Lcom/ifengyu/im/imservice/entity/SearchElement;->endIndex:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_4

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_3
.end method

.method public static setTextHilighted(Landroid/widget/TextView;Ljava/lang/String;Lcom/ifengyu/im/imservice/entity/SearchElement;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Lcom/ifengyu/im/imservice/entity/SearchElement;->startIndex:I

    iget v2, p2, Lcom/ifengyu/im/imservice/entity/SearchElement;->endIndex:I

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v2, v0, :cond_0

    const/16 v0, 0x45

    const/16 v3, 0xc0

    const/16 v4, 0x1a

    invoke-static {v0, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static setViewTouchHightlighted(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ifengyu/im/utils/IMUIHelper$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/utils/IMUIHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method
