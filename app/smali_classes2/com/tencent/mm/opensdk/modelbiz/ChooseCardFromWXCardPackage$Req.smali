.class public Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;
.super Lcom/tencent/mm/opensdk/modelbase/BaseReq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public canMultiSelect:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public cardSign:Ljava/lang/String;

.field public cardType:Ljava/lang/String;

.field public locationId:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public signType:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->signType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->signType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->cardSign:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->cardSign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_app_id"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_location_id"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->locationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_sign_type"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->signType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_card_sign"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->cardSign:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_time_stamp"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->timeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_nonce_str"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->nonceStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_card_id"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->cardId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_card_type"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->cardType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxapi_choose_card_from_wx_card_can_multi_select"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelbiz/ChooseCardFromWXCardPackage$Req;->canMultiSelect:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
