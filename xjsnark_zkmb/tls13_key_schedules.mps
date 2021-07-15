<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4b14c71b-877d-4be6-bd4a-3428cfcc870d(xjsnark.tls13_key_schedules)">
  <persistence version="9" />
  <languages>
    <use id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="d2b1" ref="r:805ab20b-1963-4bd7-ae02-dfb3fada1182(xjsnark.util_and_sha)" />
    <import index="2v2w" ref="r:4b14c71b-877d-4be6-bd4a-3428cfcc870d(xjsnark.tls13_key_schedules)" />
    <import index="liel" ref="r:1e4e7e47-5204-4166-a233-48cf8c81db83(xjsnark.aes_gcm)" />
    <import index="rktg" ref="r:6c3df212-d5bc-41ad-b103-b7c850c4b753(xjsnark.ecdhe)" />
    <import index="tluv" ref="r:497ff602-8d96-4239-8b0f-254445ada898(xjsnark.field_table)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422105332" name="jetbrains.mps.baseLanguage.structure.RemExpression" flags="nn" index="2dk9JS" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1225892319711" name="jetbrains.mps.baseLanguage.structure.ShiftRightExpression" flags="nn" index="1GS532" />
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="0688d542-e2a3-492c-a31f-0e921fd6a8fb" name="xjsnark">
      <concept id="7553992366106506034" name="xjsnark.structure.JFieldType" flags="ig" index="2D7PWU">
        <reference id="7553992366106506060" name="fieldRec" index="2D7PX4" />
      </concept>
      <concept id="7495353643616961541" name="xjsnark.structure.SingleLineCommentClassMember" flags="ng" index="DJdLC">
        <property id="7495353643619293787" name="text" index="DRO8Q" />
      </concept>
      <concept id="2280652580002804071" name="xjsnark.structure.MemoryAccessExpression" flags="ng" index="SwV0n">
        <child id="2280652580002804074" name="index" index="SwV0q" />
        <child id="2280652580002804076" name="memory" index="SwV0s" />
      </concept>
      <concept id="2280652580001293749" name="xjsnark.structure.MemoryType" flags="ig" index="SEaj5">
        <child id="2280652580001293765" name="type" index="SEaiP" />
      </concept>
      <concept id="2280652580001293832" name="xjsnark.structure.InitMemory" flags="ng" index="SEatS">
        <child id="1929320883460933539" name="type" index="6EdiW" />
        <child id="2280652580001293834" name="argArray" index="SEatU" />
      </concept>
      <concept id="4165393367774947854" name="xjsnark.structure.JUnsignedIntegerType" flags="ig" index="3qc1$W">
        <property id="4165393367774948449" name="bitwidth" index="3qc1Xj" />
      </concept>
      <concept id="8340315132972716924" name="xjsnark.structure.VerifyEqStatement" flags="ng" index="3s6pcg">
        <child id="8340315132972716925" name="exp1" index="3s6pch" />
        <child id="8340315132972716926" name="exp2" index="3s6pci" />
      </concept>
      <concept id="9096502420330357553" name="xjsnark.structure.JUnsignedIntegerConversion" flags="ng" index="3SuevK">
        <child id="9096502420330357585" name="argument" index="3Sueug" />
        <child id="9096502420330357558" name="jType" index="3SuevR" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2OJAT4$Z6ed">
    <property role="TrG5h" value="HKDF" />
    <node concept="2tJIrI" id="1fN2f79U_Fo" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79U_Pv" role="jymVt">
      <property role="DRO8Q" value="This file implements both HMAC and HKDF (RFC 5869) with SHA256 as the base hash function." />
    </node>
    <node concept="DJdLC" id="1fN2f79UAwV" role="jymVt">
      <property role="DRO8Q" value="The three main functions to implement are:" />
    </node>
    <node concept="DJdLC" id="1fN2f79UAI1" role="jymVt">
      <property role="DRO8Q" value="(1) HMAC" />
    </node>
    <node concept="DJdLC" id="1fN2f79UAUj" role="jymVt">
      <property role="DRO8Q" value="(2) HKDF Extract " />
    </node>
    <node concept="DJdLC" id="1fN2f79UB7V" role="jymVt">
      <property role="DRO8Q" value="(3) HKDF Expand - this is a iterative function, but only one iteration is required in TLS 1.3" />
    </node>
    <node concept="DJdLC" id="1fN2f79UBjT" role="jymVt">
      <property role="DRO8Q" value="The last two call HMAC after processing their inputs." />
    </node>
    <node concept="DJdLC" id="1fN2f79UC1D" role="jymVt">
      <property role="DRO8Q" value="Furthermore, TLS 1.3 uses Expand in particular ways depending on what the desired output is (a secret, key or iv)" />
    </node>
    <node concept="DJdLC" id="1fN2f79UCs1" role="jymVt">
      <property role="DRO8Q" value="It also pre-processes the inputs in specific ways, such as prepending the string &quot;tls13 &quot; to the label" />
    </node>
    <node concept="2tJIrI" id="1fN2f79UGE8" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79UJjN" role="jymVt">
      <property role="DRO8Q" value="Fixed bytes used in the HMAC function" />
    </node>
    <node concept="Wx3nA" id="1fN2f79UGYF" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="IPAD" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1fN2f79UGP5" role="1B3o_S" />
      <node concept="10Oyi0" id="1fN2f79UGW7" role="1tU5fm" />
      <node concept="2nou5x" id="1fN2f79UH5C" role="33vP2m">
        <property role="2noCCI" value="36" />
      </node>
    </node>
    <node concept="Wx3nA" id="1fN2f79UHi5" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="OPAD" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1fN2f79UHi6" role="1B3o_S" />
      <node concept="10Oyi0" id="1fN2f79UHi7" role="1tU5fm" />
      <node concept="2nou5x" id="1fN2f79UHi8" role="33vP2m">
        <property role="2noCCI" value="5c" />
      </node>
    </node>
    <node concept="2tJIrI" id="2OJAT4$Zc6C" role="jymVt" />
    <node concept="2tJIrI" id="1fN2f79UHbp" role="jymVt" />
    <node concept="DJdLC" id="2OJAT4hfbK4" role="jymVt">
      <property role="DRO8Q" value="HMAC function:" />
    </node>
    <node concept="DJdLC" id="1fN2f79UCTT" role="jymVt">
      <property role="DRO8Q" value="HMAC(key, salt) = H((k \xor ipad) || H((k \xor opad)  ||  salt)) " />
    </node>
    <node concept="DJdLC" id="1fN2f79UDV5" role="jymVt">
      <property role="DRO8Q" value="where ipad and opad are fixed bytes (0x36 and 0x5c respective)" />
    </node>
    <node concept="2YIFZL" id="2OJAT4_14YZ" role="jymVt">
      <property role="TrG5h" value="hmac" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_14Z1" role="3clF47">
        <node concept="3clFbH" id="2OJAT4_14Z2" role="3cqZAp" />
        <node concept="3SKdUt" id="1fN2f79UEyX" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79UEyZ" role="3SKWNk">
            <property role="3SKdUp" value="the key is padded to 512 bits when using SHA256" />
          </node>
        </node>
        <node concept="3clFbJ" id="2OJAT4_14Z3" role="3cqZAp">
          <node concept="3clFbS" id="2OJAT4_14Z4" role="3clFbx">
            <node concept="3cpWs8" id="2OJAT4_14Z5" role="3cqZAp">
              <node concept="3cpWsn" id="2OJAT4_14Z6" role="3cpWs9">
                <property role="TrG5h" value="key_pad" />
                <node concept="10Q1$e" id="2OJAT4_14Z7" role="1tU5fm">
                  <node concept="3qc1$W" id="2OJAT4_14Z8" role="10Q1$1">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2OJAT4_14Z9" role="33vP2m">
                  <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                  <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                  <node concept="3cpWsd" id="2OJAT4_14Za" role="37wK5m">
                    <node concept="2OqwBi" id="2OJAT4_14Zb" role="3uHU7w">
                      <node concept="37vLTw" id="2OJAT4_14Zc" role="2Oq$k0">
                        <ref role="3cqZAo" node="2OJAT4_1500" resolve="key" />
                      </node>
                      <node concept="1Rwk04" id="2OJAT4_14Zd" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="2OJAT4_14Ze" role="3uHU7B">
                      <property role="3cmrfH" value="64" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2OJAT4_14Zg" role="3cqZAp">
              <node concept="37vLTI" id="2OJAT4_14Zh" role="3clFbG">
                <node concept="2YIFZM" id="2OJAT4_14Zi" role="37vLTx">
                  <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                  <ref role="37wK5l" to="d2b1:2OJAT4$NxZ8" resolve="concat" />
                  <node concept="37vLTw" id="2OJAT4_14Zj" role="37wK5m">
                    <ref role="3cqZAo" node="2OJAT4_1500" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="2OJAT4_14Zk" role="37wK5m">
                    <ref role="3cqZAo" node="2OJAT4_14Z6" resolve="key_pad" />
                  </node>
                </node>
                <node concept="37vLTw" id="2OJAT4_14Zl" role="37vLTJ">
                  <ref role="3cqZAo" node="2OJAT4_1500" resolve="key" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="2OJAT4_14Zm" role="3clFbw">
            <node concept="3cmrfG" id="2OJAT4_14Zn" role="3uHU7w">
              <property role="3cmrfH" value="64" />
            </node>
            <node concept="2OqwBi" id="2OJAT4_14Zo" role="3uHU7B">
              <node concept="37vLTw" id="2OJAT4_14Zp" role="2Oq$k0">
                <ref role="3cqZAo" node="2OJAT4_1500" resolve="key" />
              </node>
              <node concept="1Rwk04" id="2OJAT4_14Zq" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79UFaJ" role="3cqZAp" />
        <node concept="3SKdUt" id="1fN2f79UFU8" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79UFUa" role="3SKWNk">
            <property role="3SKdUp" value="We xor every byte of the key with ipad and opad to generate the following two strings" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_14Zr" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_14Zs" role="3cpWs9">
            <property role="TrG5h" value="key_ipad" />
            <node concept="10Q1$e" id="2OJAT4_14Zt" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_14Zu" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="2OJAT4_14Zv" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <ref role="37wK5l" to="d2b1:2OJAT4_05yY" resolve="xor_with_byte" />
              <node concept="37vLTw" id="2OJAT4_14Zw" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_1500" resolve="key" />
              </node>
              <node concept="3SuevK" id="2OJAT4_14Zx" role="37wK5m">
                <node concept="3qc1$W" id="2OJAT4_14Zy" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="37vLTw" id="1fN2f79UHui" role="3Sueug">
                  <ref role="3cqZAo" node="1fN2f79UGYF" resolve="IPAD" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_14Z$" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_14Z_" role="3cpWs9">
            <property role="TrG5h" value="key_opad" />
            <node concept="10Q1$e" id="2OJAT4_14ZA" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_14ZB" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="2OJAT4_14ZC" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <ref role="37wK5l" to="d2b1:2OJAT4_05yY" resolve="xor_with_byte" />
              <node concept="37vLTw" id="2OJAT4_14ZD" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_1500" resolve="key" />
              </node>
              <node concept="3SuevK" id="2OJAT4_14ZE" role="37wK5m">
                <node concept="3qc1$W" id="2OJAT4_14ZF" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="37vLTw" id="1fN2f79UIxX" role="3Sueug">
                  <ref role="3cqZAo" node="1fN2f79UHi5" resolve="OPAD" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_14ZH" role="3cqZAp" />
        <node concept="3SKdUt" id="1fN2f79UJSu" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79UJSw" role="3SKWNk">
            <property role="3SKdUp" value="The inner of the two nested hashes" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_14ZJ" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_14ZK" role="3cpWs9">
            <property role="TrG5h" value="inner_hash" />
            <node concept="10Q1$e" id="2OJAT4_14ZL" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_14ZM" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="2OJAT4_14ZN" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
              <ref role="37wK5l" to="d2b1:2OJAT4$YLD7" resolve="sha2" />
              <node concept="2YIFZM" id="2OJAT4_14ZO" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <ref role="37wK5l" to="d2b1:2OJAT4$NxZ8" resolve="concat" />
                <node concept="37vLTw" id="2OJAT4_14ZP" role="37wK5m">
                  <ref role="3cqZAo" node="2OJAT4_14Zs" resolve="key_ipad" />
                </node>
                <node concept="37vLTw" id="2OJAT4_14ZQ" role="37wK5m">
                  <ref role="3cqZAo" node="2OJAT4_1503" resolve="salt" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_14ZR" role="3cqZAp" />
        <node concept="3SKdUt" id="1fN2f79ULDL" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79ULDN" role="3SKWNk">
            <property role="3SKdUp" value="The outer of the two nested hashes" />
          </node>
        </node>
        <node concept="3cpWs6" id="2OJAT4_14ZS" role="3cqZAp">
          <node concept="2YIFZM" id="2OJAT4_14ZT" role="3cqZAk">
            <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
            <ref role="37wK5l" to="d2b1:2OJAT4$YLD7" resolve="sha2" />
            <node concept="2YIFZM" id="2OJAT4_14ZU" role="37wK5m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <ref role="37wK5l" to="d2b1:2OJAT4$NxZ8" resolve="concat" />
              <node concept="37vLTw" id="2OJAT4_14ZV" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_14Z_" resolve="key_opad" />
              </node>
              <node concept="37vLTw" id="2OJAT4_14ZW" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_14ZK" resolve="inner_hash" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_14ZY" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_14ZZ" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_1500" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Q1$e" id="2OJAT4_1501" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_1502" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_1503" role="3clF46">
        <property role="TrG5h" value="salt" />
        <node concept="10Q1$e" id="2OJAT4_1504" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_1505" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4_14ZX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4$ZcsN" role="jymVt" />
    <node concept="2tJIrI" id="2OJAT4$Z6er" role="jymVt" />
    <node concept="DJdLC" id="2OJAT4hiLVP" role="jymVt">
      <property role="DRO8Q" value=" HKDF Extract" />
    </node>
    <node concept="2YIFZL" id="2OJAT4_15q9" role="jymVt">
      <property role="TrG5h" value="hkdf_extract" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_15qb" role="3clF47">
        <node concept="3cpWs6" id="2OJAT4_15qd" role="3cqZAp">
          <node concept="1rXfSq" id="2OJAT4_15qe" role="3cqZAk">
            <ref role="37wK5l" node="2OJAT4_14YZ" resolve="hmac" />
            <node concept="37vLTw" id="2OJAT4_15qf" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4_15qk" resolve="salt" />
            </node>
            <node concept="37vLTw" id="2OJAT4_15qg" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4_15qn" resolve="key" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_15qi" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_15qj" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_15qk" role="3clF46">
        <property role="TrG5h" value="salt" />
        <node concept="10Q1$e" id="2OJAT4_15ql" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_15qm" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_15qn" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Q1$e" id="2OJAT4_15qo" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_15qp" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4_15qh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4s2HOc" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79UR7T" role="jymVt">
      <property role="DRO8Q" value="One iteration of HKDF expand, the one_byte being appending to the 'info' input" />
    </node>
    <node concept="2YIFZL" id="2OJAT4_16PV" role="jymVt">
      <property role="TrG5h" value="hkdf_expand" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_16PX" role="3clF47">
        <node concept="3cpWs8" id="2OJAT4_16PY" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_16PZ" role="3cpWs9">
            <property role="TrG5h" value="the_one_byte" />
            <node concept="10Q1$e" id="2OJAT4_16Q0" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_16Q1" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2BsdOp" id="2OJAT4_16Q2" role="33vP2m">
              <node concept="3SuevK" id="2OJAT4_16Q3" role="2BsfMF">
                <node concept="3qc1$W" id="2OJAT4_16Q4" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="3cmrfG" id="2OJAT4_16Q5" role="3Sueug">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_16Q7" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_16Q8" role="3cpWs9">
            <property role="TrG5h" value="label" />
            <node concept="10Q1$e" id="2OJAT4_16Q9" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_16Qa" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="2OJAT4_16Qb" role="33vP2m">
              <ref role="37wK5l" to="d2b1:2OJAT4$NxZ8" resolve="concat" />
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <node concept="37vLTw" id="2OJAT4_16Qc" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_16Qp" resolve="info" />
              </node>
              <node concept="37vLTw" id="2OJAT4_16Qd" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_16PZ" resolve="the_one_byte" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_16Qe" role="3cqZAp" />
        <node concept="3cpWs6" id="2OJAT4_16Qf" role="3cqZAp">
          <node concept="1rXfSq" id="2OJAT4_16Qg" role="3cqZAk">
            <ref role="37wK5l" node="2OJAT4_14YZ" resolve="hmac" />
            <node concept="37vLTw" id="2OJAT4_16Qh" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4_16Qm" resolve="key" />
            </node>
            <node concept="37vLTw" id="2OJAT4_16Qi" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4_16Q8" resolve="label" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_16Qk" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_16Ql" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_16Qm" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="10Q1$e" id="2OJAT4_16Qn" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_16Qo" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_16Qp" role="3clF46">
        <property role="TrG5h" value="info" />
        <node concept="10Q1$e" id="2OJAT4_16Qq" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_16Qr" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4_16Qj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1fN2f79UU0l" role="jymVt" />
    <node concept="2tJIrI" id="1fN2f79UM8T" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79UW7E" role="jymVt">
      <property role="DRO8Q" value="This function generates the label to be used by the TLS 1.3 algorithm when calling HKDF" />
    </node>
    <node concept="DJdLC" id="1fN2f79UX7w" role="jymVt">
      <property role="DRO8Q" value="The description is in RFC 8446, Section 7.1" />
    </node>
    <node concept="2YIFZL" id="2OJAT4_15E$" role="jymVt">
      <property role="TrG5h" value="get_tls_hkdf_label" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_15EA" role="3clF47">
        <node concept="3clFbH" id="1fN2f79UZwx" role="3cqZAp" />
        <node concept="3SKdUt" id="2OJAT4_15EB" role="3cqZAp">
          <node concept="3SKdUq" id="2OJAT4_15EC" role="3SKWNk">
            <property role="3SKdUp" value="Get length of the desired output represented as 2 bytes" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15EM" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15EN" role="3cpWs9">
            <property role="TrG5h" value="output_len_in_bytes" />
            <node concept="3qc1$W" id="2OJAT4_15EO" role="1tU5fm">
              <property role="3qc1Xj" value="16" />
            </node>
            <node concept="3SuevK" id="2OJAT4_15EP" role="33vP2m">
              <node concept="3qc1$W" id="2OJAT4_15EQ" role="3SuevR">
                <property role="3qc1Xj" value="16" />
              </node>
              <node concept="37vLTw" id="2OJAT4_15ER" role="3Sueug">
                <ref role="3cqZAo" node="2OJAT4_15G2" resolve="output_len" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15ES" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15ET" role="3cpWs9">
            <property role="TrG5h" value="output_len_bytes" />
            <node concept="10Q1$e" id="2OJAT4_15EU" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_15EV" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2BsdOp" id="2OJAT4_15EW" role="33vP2m">
              <node concept="3SuevK" id="2OJAT4_15EX" role="2BsfMF">
                <node concept="3qc1$W" id="2OJAT4_15EY" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="1GS532" id="2OJAT4_15EZ" role="3Sueug">
                  <node concept="3cmrfG" id="2OJAT4_15F0" role="3uHU7w">
                    <property role="3cmrfH" value="8" />
                  </node>
                  <node concept="37vLTw" id="2OJAT4_15F1" role="3uHU7B">
                    <ref role="3cqZAo" node="2OJAT4_15EN" resolve="output_len_in_bytes" />
                  </node>
                </node>
              </node>
              <node concept="3SuevK" id="2OJAT4_15F2" role="2BsfMF">
                <node concept="3qc1$W" id="2OJAT4_15F3" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="37vLTw" id="2OJAT4_15F4" role="3Sueug">
                  <ref role="3cqZAo" node="2OJAT4_15EN" resolve="output_len_in_bytes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_15F5" role="3cqZAp" />
        <node concept="3SKdUt" id="2OJAT4_15F6" role="3cqZAp">
          <node concept="3SKdUq" id="2OJAT4_15F7" role="3SKWNk">
            <property role="3SKdUp" value="Append &quot;tls13 &quot; to the label string " />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15Fk" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15Fl" role="3cpWs9">
            <property role="TrG5h" value="label_bytes" />
            <node concept="10Q1$e" id="2OJAT4_15Fm" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_15Fn" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="2OJAT4_15Fo" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <ref role="37wK5l" to="d2b1:2OJAT4_01cH" resolve="string_to_bytes" />
              <node concept="3cpWs3" id="2OJAT4_15Fp" role="37wK5m">
                <node concept="37vLTw" id="2OJAT4_15Fq" role="3uHU7w">
                  <ref role="3cqZAo" node="2OJAT4_15G4" resolve="label_string" />
                </node>
                <node concept="Xl_RD" id="2OJAT4_15Fr" role="3uHU7B">
                  <property role="Xl_RC" value="tls13 " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_15Fs" role="3cqZAp" />
        <node concept="3SKdUt" id="1fN2f79V3kS" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79V3kU" role="3SKWNk">
            <property role="3SKdUp" value="Prepend the length of the new label represented as 1 byte" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15F8" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15F9" role="3cpWs9">
            <property role="TrG5h" value="label_len_byte" />
            <node concept="10Q1$e" id="2OJAT4_15Fa" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_15Fb" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2BsdOp" id="2OJAT4_15Fc" role="33vP2m">
              <node concept="3SuevK" id="2OJAT4_15Fd" role="2BsfMF">
                <node concept="3qc1$W" id="2OJAT4_15Fe" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="3cpWs3" id="2OJAT4_15Ff" role="3Sueug">
                  <node concept="2OqwBi" id="2OJAT4_15Fg" role="3uHU7w">
                    <node concept="37vLTw" id="2OJAT4_15Fh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2OJAT4_15G4" resolve="label_string" />
                    </node>
                    <node concept="liA8E" id="2OJAT4_15Fi" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="2OJAT4_15Fj" role="3uHU7B">
                    <property role="3cmrfH" value="6" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79V2rB" role="3cqZAp" />
        <node concept="3SKdUt" id="2OJAT4_15Ft" role="3cqZAp">
          <node concept="3SKdUq" id="2OJAT4_15Fu" role="3SKWNk">
            <property role="3SKdUp" value="Reprsent the length of the context hash as 1 byte" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15Fv" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15Fw" role="3cpWs9">
            <property role="TrG5h" value="context_hash_len_byte" />
            <node concept="10Q1$e" id="2OJAT4_15Fx" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_15Fy" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2BsdOp" id="2OJAT4_15Fz" role="33vP2m">
              <node concept="3SuevK" id="2OJAT4_15F$" role="2BsfMF">
                <node concept="3qc1$W" id="2OJAT4_15F_" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="2OqwBi" id="2OJAT4_15FA" role="3Sueug">
                  <node concept="37vLTw" id="2OJAT4_15FB" role="2Oq$k0">
                    <ref role="3cqZAo" node="2OJAT4_15G6" resolve="context_hash" />
                  </node>
                  <node concept="1Rwk04" id="2OJAT4_15FC" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_15FD" role="3cqZAp" />
        <node concept="3SKdUt" id="1fN2f79V5Aw" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79V5Ay" role="3SKWNk">
            <property role="3SKdUp" value="The final label is the concatenation of the following:" />
          </node>
        </node>
        <node concept="3SKdUt" id="1fN2f79V6KC" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79V6KD" role="3SKWNk">
            <property role="3SKdUp" value="1. length of the required output as 2 bytes" />
          </node>
        </node>
        <node concept="3SKdUt" id="1fN2f79V6ql" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79V6qn" role="3SKWNk">
            <property role="3SKdUp" value="2. the label prepended by its length as one byte" />
          </node>
        </node>
        <node concept="3SKdUt" id="1fN2f79V7PZ" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79V7Q1" role="3SKWNk">
            <property role="3SKdUp" value="3. the context hash prepended by its length as one byte" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15FG" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15FH" role="3cpWs9">
            <property role="TrG5h" value="arrays_to_concat" />
            <node concept="10Q1$e" id="2OJAT4_15FI" role="1tU5fm">
              <node concept="10Q1$e" id="2OJAT4_15FJ" role="10Q1$1">
                <node concept="3qc1$W" id="2OJAT4_15FK" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
            </node>
            <node concept="2BsdOp" id="2OJAT4_15FL" role="33vP2m">
              <node concept="37vLTw" id="2OJAT4_15FM" role="2BsfMF">
                <ref role="3cqZAo" node="2OJAT4_15ET" resolve="output_len_bytes" />
              </node>
              <node concept="37vLTw" id="2OJAT4_15FN" role="2BsfMF">
                <ref role="3cqZAo" node="2OJAT4_15F9" resolve="label_len_byte" />
              </node>
              <node concept="37vLTw" id="2OJAT4_15FO" role="2BsfMF">
                <ref role="3cqZAo" node="2OJAT4_15Fl" resolve="label_bytes" />
              </node>
              <node concept="37vLTw" id="2OJAT4_15FP" role="2BsfMF">
                <ref role="3cqZAo" node="2OJAT4_15Fw" resolve="context_hash_len_byte" />
              </node>
              <node concept="37vLTw" id="2OJAT4_15FQ" role="2BsfMF">
                <ref role="3cqZAo" node="2OJAT4_15G6" resolve="context_hash" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_15FR" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_15FS" role="3cpWs9">
            <property role="TrG5h" value="hkdf_label" />
            <node concept="10Q1$e" id="2OJAT4_15FT" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_15FU" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="2OJAT4_15FV" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <ref role="37wK5l" to="d2b1:2OJAT4$NxN3" resolve="concat" />
              <node concept="37vLTw" id="2OJAT4_15FW" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_15FH" resolve="arrays_to_concat" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79V4mY" role="3cqZAp" />
        <node concept="3cpWs6" id="2OJAT4_15FX" role="3cqZAp">
          <node concept="37vLTw" id="2OJAT4_15FY" role="3cqZAk">
            <ref role="3cqZAo" node="2OJAT4_15FS" resolve="hkdf_label" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_15G0" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_15G1" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_15G2" role="3clF46">
        <property role="TrG5h" value="output_len" />
        <node concept="10Oyi0" id="2OJAT4_15G3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2OJAT4_15G4" role="3clF46">
        <property role="TrG5h" value="label_string" />
        <node concept="17QB3L" id="2OJAT4_15G5" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2OJAT4_15G6" role="3clF46">
        <property role="TrG5h" value="context_hash" />
        <node concept="10Q1$e" id="2OJAT4_15G7" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_15G8" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4_15FZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4zQYFA" role="jymVt" />
    <node concept="DJdLC" id="1fN2f79VdM$" role="jymVt">
      <property role="DRO8Q" value="The three functions below call HKDF Expand" />
    </node>
    <node concept="DJdLC" id="1fN2f79Vg7a" role="jymVt">
      <property role="DRO8Q" value="when the output generated is a key and a iv and a TLS secret, respectively." />
    </node>
    <node concept="DJdLC" id="1fN2f79Vf46" role="jymVt">
      <property role="DRO8Q" value="Descriptions are in RFC 8446, Section 7.3" />
    </node>
    <node concept="2tJIrI" id="1fN2f79VgNm" role="jymVt" />
    <node concept="2YIFZL" id="2OJAT4_166j" role="jymVt">
      <property role="TrG5h" value="hkdf_expand_derive_tk" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_166l" role="3clF47">
        <node concept="3SKdUt" id="1fN2f79Vlve" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79Vlvg" role="3SKWNk">
            <property role="3SKdUp" value="For AES GCM 128, the key length is 16" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_166m" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_166n" role="3cpWs9">
            <property role="TrG5h" value="hkdf_label" />
            <node concept="10Q1$e" id="2OJAT4_166o" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_166p" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="1rXfSq" id="2OJAT4_166q" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15E$" resolve="get_tls_hkdf_label" />
              <node concept="37vLTw" id="2OJAT4LJCWT" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4LJC_7" resolve="key_length" />
              </node>
              <node concept="Xl_RD" id="2OJAT4_166s" role="37wK5m">
                <property role="Xl_RC" value="key" />
              </node>
              <node concept="2ShNRf" id="2OJAT4LJDPq" role="37wK5m">
                <node concept="3$_iS1" id="2OJAT4LJDYj" role="2ShVmc">
                  <node concept="3$GHV9" id="2OJAT4LJDYl" role="3$GQph">
                    <node concept="3cmrfG" id="2OJAT4LJE1F" role="3$I4v7">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3qc1$W" id="2OJAT4LJDYi" role="3$_nBY">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2OJAT4_166w" role="3cqZAp">
          <node concept="2YIFZM" id="2OJAT4_166x" role="3cqZAk">
            <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
            <ref role="37wK5l" to="d2b1:2OJAT4_00HT" resolve="get_prefix" />
            <node concept="1rXfSq" id="2OJAT4_166y" role="37wK5m">
              <ref role="37wK5l" node="2OJAT4_16PV" resolve="hkdf_expand" />
              <node concept="37vLTw" id="2OJAT4_166z" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_166D" resolve="secret" />
              </node>
              <node concept="37vLTw" id="2OJAT4_166$" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_166n" resolve="hkdf_label" />
              </node>
            </node>
            <node concept="37vLTw" id="2OJAT4LJDai" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4LJC_7" resolve="key_length" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_166B" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_166C" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_166D" role="3clF46">
        <property role="TrG5h" value="secret" />
        <node concept="10Q1$e" id="2OJAT4_166E" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_166F" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4LJC_7" role="3clF46">
        <property role="TrG5h" value="key_length" />
        <node concept="10Oyi0" id="2OJAT4LJCCc" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2OJAT4_166A" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4zS3we" role="jymVt" />
    <node concept="2YIFZL" id="2OJAT4_16mi" role="jymVt">
      <property role="TrG5h" value="hkdf_expand_derive_iv" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_16mk" role="3clF47">
        <node concept="3SKdUt" id="1fN2f79VlJf" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79VlJh" role="3SKWNk">
            <property role="3SKdUp" value="For AES GCM 128, the iv length is 12" />
          </node>
        </node>
        <node concept="3cpWs8" id="2OJAT4_16ml" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_16mm" role="3cpWs9">
            <property role="TrG5h" value="hkdf_label" />
            <node concept="10Q1$e" id="2OJAT4_16mn" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_16mo" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="1rXfSq" id="2OJAT4_16mp" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15E$" resolve="get_tls_hkdf_label" />
              <node concept="37vLTw" id="2OJAT4LJDnj" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4LJCCO" resolve="iv_length" />
              </node>
              <node concept="Xl_RD" id="2OJAT4_16mr" role="37wK5m">
                <property role="Xl_RC" value="iv" />
              </node>
              <node concept="2ShNRf" id="2OJAT4LJEia" role="37wK5m">
                <node concept="3$_iS1" id="2OJAT4LJEqZ" role="2ShVmc">
                  <node concept="3$GHV9" id="2OJAT4LJEr1" role="3$GQph">
                    <node concept="3cmrfG" id="2OJAT4LJEun" role="3$I4v7">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3qc1$W" id="2OJAT4LJEqY" role="3$_nBY">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2OJAT4_16mx" role="3cqZAp">
          <node concept="2YIFZM" id="2OJAT4_16my" role="3cqZAk">
            <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
            <ref role="37wK5l" to="d2b1:2OJAT4_00HT" resolve="get_prefix" />
            <node concept="1rXfSq" id="2OJAT4_16mz" role="37wK5m">
              <ref role="37wK5l" node="2OJAT4_16PV" resolve="hkdf_expand" />
              <node concept="37vLTw" id="2OJAT4_16m$" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_16mE" resolve="secret" />
              </node>
              <node concept="37vLTw" id="2OJAT4_16m_" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_16mm" resolve="hkdf_label" />
              </node>
            </node>
            <node concept="37vLTw" id="2OJAT4LJD$4" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4LJCCO" resolve="iv_length" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_16mC" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_16mD" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_16mE" role="3clF46">
        <property role="TrG5h" value="secret" />
        <node concept="10Q1$e" id="2OJAT4_16mF" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_16mG" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4LJCCO" role="3clF46">
        <property role="TrG5h" value="iv_length" />
        <node concept="10Oyi0" id="2OJAT4LJCFT" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2OJAT4_16mB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2OJAT4hkvtB" role="jymVt" />
    <node concept="2YIFZL" id="2OJAT4_16Ah" role="jymVt">
      <property role="TrG5h" value="hkdf_expand_derive_secret" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2OJAT4_16Aj" role="3clF47">
        <node concept="3SKdUt" id="1fN2f79Vl3J" role="3cqZAp">
          <node concept="3SKdUq" id="1fN2f79Vl3L" role="3SKWNk">
            <property role="3SKdUp" value="The length of all TLS 1.3 secrets are 32 bytes" />
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79VlmT" role="3cqZAp" />
        <node concept="3cpWs8" id="2OJAT4_16Ao" role="3cqZAp">
          <node concept="3cpWsn" id="2OJAT4_16Ap" role="3cpWs9">
            <property role="TrG5h" value="hkdf_label" />
            <node concept="10Q1$e" id="2OJAT4_16Aq" role="1tU5fm">
              <node concept="3qc1$W" id="2OJAT4_16Ar" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="1rXfSq" id="2OJAT4_16As" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15E$" resolve="get_tls_hkdf_label" />
              <node concept="3cmrfG" id="2OJAT4_16At" role="37wK5m">
                <property role="3cmrfH" value="32" />
              </node>
              <node concept="37vLTw" id="2OJAT4_16Au" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_16AF" resolve="label_string" />
              </node>
              <node concept="37vLTw" id="2OJAT4_16Av" role="37wK5m">
                <ref role="3cqZAo" node="2OJAT4_16AH" resolve="context_hash" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OJAT4_16Aw" role="3cqZAp" />
        <node concept="3cpWs6" id="2OJAT4_16Ax" role="3cqZAp">
          <node concept="1rXfSq" id="2OJAT4_16Ay" role="3cqZAk">
            <ref role="37wK5l" node="2OJAT4_16PV" resolve="hkdf_expand" />
            <node concept="37vLTw" id="2OJAT4_16Az" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4_16AC" resolve="secret" />
            </node>
            <node concept="37vLTw" id="2OJAT4_16A$" role="37wK5m">
              <ref role="3cqZAo" node="2OJAT4_16Ap" resolve="hkdf_label" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="2OJAT4_16AA" role="3clF45">
        <node concept="3qc1$W" id="2OJAT4_16AB" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_16AC" role="3clF46">
        <property role="TrG5h" value="secret" />
        <node concept="10Q1$e" id="2OJAT4_16AD" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_16AE" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2OJAT4_16AF" role="3clF46">
        <property role="TrG5h" value="label_string" />
        <node concept="17QB3L" id="2OJAT4_16AG" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2OJAT4_16AH" role="3clF46">
        <property role="TrG5h" value="context_hash" />
        <node concept="10Q1$e" id="2OJAT4_16AI" role="1tU5fm">
          <node concept="3qc1$W" id="2OJAT4_16AJ" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2OJAT4_16A_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1fN2f79Viw5" role="jymVt" />
    <node concept="2tJIrI" id="2OJAT4hk$_7" role="jymVt" />
    <node concept="2tJIrI" id="2OJAT4$Z6et" role="jymVt" />
    <node concept="3Tm1VV" id="2OJAT4$Z6ee" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="64TdDMCKqoB">
    <property role="TrG5h" value="TLSKeySchedule" />
    <node concept="2tJIrI" id="30zMb0dGEhK" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dGECb" role="jymVt">
      <property role="DRO8Q" value="NOTATION is from https://eprint.iacr.org/2020/1044.pdf" />
    </node>
    <node concept="3Tm1VV" id="64TdDMCKqoC" role="1B3o_S" />
    <node concept="2tJIrI" id="64TdDMCKqrt" role="jymVt" />
    <node concept="DJdLC" id="30zMb0d$ChH" role="jymVt">
      <property role="DRO8Q" value="This class contains functions that compute the different types of TLS1.3 Key Schedule" />
    </node>
    <node concept="DJdLC" id="30zMb0d$Dke" role="jymVt">
      <property role="DRO8Q" value="Input: " />
    </node>
    <node concept="DJdLC" id="30zMb0d$G5Q" role="jymVt">
      <property role="DRO8Q" value="  - handshake transcript" />
    </node>
    <node concept="DJdLC" id="30zMb0d$H4i" role="jymVt">
      <property role="DRO8Q" value="  - client's secrets (PSK and/or DHE share)" />
    </node>
    <node concept="DJdLC" id="30zMb0d$FkF" role="jymVt">
      <property role="DRO8Q" value="  - application data ciphertext" />
    </node>
    <node concept="DJdLC" id="30zMb0d$EnP" role="jymVt">
      <property role="DRO8Q" value="Output:" />
    </node>
    <node concept="DJdLC" id="30zMb0d$HYh" role="jymVt">
      <property role="DRO8Q" value="  - client's application traffic key" />
    </node>
    <node concept="DJdLC" id="30zMb0d$IEh" role="jymVt">
      <property role="DRO8Q" value="  - decryption of the applicaton data" />
    </node>
    <node concept="DJdLC" id="30zMb0d$KKe" role="jymVt">
      <property role="DRO8Q" value="." />
    </node>
    <node concept="DJdLC" id="30zMb0d$Meo" role="jymVt">
      <property role="DRO8Q" value="This is done for 4 types of TLS 1.3 Key Schedule methods:" />
    </node>
    <node concept="DJdLC" id="30zMb0d$N0o" role="jymVt">
      <property role="DRO8Q" value="  - 0RTT" />
    </node>
    <node concept="DJdLC" id="30zMb0d$NMv" role="jymVt">
      <property role="DRO8Q" value="  - Baseline 1RTT" />
    </node>
    <node concept="DJdLC" id="30zMb0d$Oy1" role="jymVt">
      <property role="DRO8Q" value="  - Shortcut 1RTT" />
    </node>
    <node concept="DJdLC" id="30zMb0d$Ph_" role="jymVt">
      <property role="DRO8Q" value="  - Amortized Opening" />
    </node>
    <node concept="2tJIrI" id="30zMb0d$Slo" role="jymVt" />
    <node concept="DJdLC" id="30zMb0d$T1D" role="jymVt">
      <property role="DRO8Q" value="The notation for all variables in this class is from:" />
    </node>
    <node concept="DJdLC" id="30zMb0d$TTk" role="jymVt">
      <property role="DRO8Q" value="https://eprint.iacr.org/2020/1044.pdf" />
    </node>
    <node concept="2tJIrI" id="30zMb0d$XRp" role="jymVt" />
    <node concept="DJdLC" id="30zMb0d$YzK" role="jymVt">
      <property role="DRO8Q" value="The key dervation process for the different methods is in Figure 2" />
    </node>
    <node concept="2tJIrI" id="30zMb0d$BTd" role="jymVt" />
    <node concept="2tJIrI" id="30zMb0dAad7" role="jymVt" />
    <node concept="2tJIrI" id="30zMb0dAaz_" role="jymVt" />
    <node concept="2tJIrI" id="30zMb0dAaU4" role="jymVt" />
    <node concept="DJdLC" id="30zMb0d$QNt" role="jymVt">
      <property role="DRO8Q" value="0RTT method is a &quot;session resumption&quot; feature offered by TLS" />
    </node>
    <node concept="DJdLC" id="30zMb0d$ZED" role="jymVt">
      <property role="DRO8Q" value="where the client and server share a PSK (established in a previous session)" />
    </node>
    <node concept="DJdLC" id="30zMb0d_1v0" role="jymVt">
      <property role="DRO8Q" value="and the PSK can be used to send &quot;early data&quot; in the client's first message " />
    </node>
    <node concept="DJdLC" id="30zMb0d_2jU" role="jymVt">
      <property role="DRO8Q" value="without a full handshake" />
    </node>
    <node concept="DJdLC" id="30zMb0d_36p" role="jymVt">
      <property role="DRO8Q" value="See Figure 2 from https://eprint.iacr.org/2020/1044.pdf" />
    </node>
    <node concept="2tJIrI" id="30zMb0dA9O3" role="jymVt" />
    <node concept="DJdLC" id="30zMb0d_jaI" role="jymVt">
      <property role="DRO8Q" value="The function broadly does the following steps:" />
    </node>
    <node concept="DJdLC" id="30zMb0d_jVS" role="jymVt">
      <property role="DRO8Q" value="(1) Using the PSK and transcript hashes, compute the binder" />
    </node>
    <node concept="DJdLC" id="30zMb0dAe8Q" role="jymVt">
      <property role="DRO8Q" value="(2) Verify that it is equal to the REAL_BINDER from the transcript" />
    </node>
    <node concept="DJdLC" id="30zMb0dAf0v" role="jymVt">
      <property role="DRO8Q" value="(3) Now, compute the traffic keys and decrypt the ciphertext" />
    </node>
    <node concept="2YIFZL" id="64TdDMDBykh" role="jymVt">
      <property role="TrG5h" value="get0RTT" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="64TdDMDBykj" role="3clF47">
        <node concept="3clFbH" id="64TdDMDBykk" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDMDBykl" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDBykm" role="3cpWs9">
            <property role="TrG5h" value="ES" />
            <node concept="10Q1$e" id="64TdDMDBykn" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDByko" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDBykp" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="2YIFZM" id="64TdDMDBykq" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                <node concept="3cmrfG" id="64TdDMDBykr" role="37wK5m">
                  <property role="3cmrfH" value="32" />
                </node>
              </node>
              <node concept="37vLTw" id="64TdDMDByks" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBylP" resolve="PSK" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4c$AeS51HkG" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDMDBykt" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDByku" role="3cpWs9">
            <property role="TrG5h" value="dES" />
            <node concept="10Q1$e" id="64TdDMDBykv" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDBykw" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDBykx" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="64TdDMDByky" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBykm" resolve="ES" />
              </node>
              <node concept="Xl_RD" id="64TdDMDBykz" role="37wK5m">
                <property role="Xl_RC" value="derived" />
              </node>
              <node concept="2YIFZM" id="64TdDMDByk$" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
                <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMDByk_" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDMDBykC" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDBykD" role="3cpWs9">
            <property role="TrG5h" value="BK" />
            <node concept="10Q1$e" id="64TdDMDBykE" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDBykF" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDBykG" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="64TdDMDBykH" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBykm" resolve="ES" />
              </node>
              <node concept="Xl_RD" id="64TdDMDBykI" role="37wK5m">
                <property role="Xl_RC" value="res binder" />
              </node>
              <node concept="2YIFZM" id="64TdDMDBykJ" role="37wK5m">
                <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
                <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMDBykK" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDMDBykL" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDBykM" role="3cpWs9">
            <property role="TrG5h" value="fk_B" />
            <node concept="10Q1$e" id="64TdDMDBykN" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDBykO" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDBykP" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <node concept="37vLTw" id="64TdDMDBykQ" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBykD" resolve="BK" />
              </node>
              <node concept="Xl_RD" id="64TdDMDBykR" role="37wK5m">
                <property role="Xl_RC" value="finished" />
              </node>
              <node concept="2ShNRf" id="64TdDMDBykS" role="37wK5m">
                <node concept="3$_iS1" id="64TdDMDBykT" role="2ShVmc">
                  <node concept="3$GHV9" id="64TdDMDBykU" role="3$GQph">
                    <node concept="3cmrfG" id="64TdDMDBykV" role="3$I4v7">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3qc1$W" id="64TdDMDBykW" role="3$_nBY">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMDBykX" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0d_9kO" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0d_9kQ" role="3SKWNk">
            <property role="3SKdUp" value="This is the binder derived by the purported PSK that was given as a witness to the circuit" />
          </node>
        </node>
        <node concept="3cpWs8" id="64TdDMDBykY" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDBykZ" role="3cpWs9">
            <property role="TrG5h" value="derived_binder" />
            <node concept="10Q1$e" id="64TdDMDByl0" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDByl1" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDByl2" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_14YZ" resolve="hmac" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="64TdDMDByl3" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBykM" resolve="fk_B" />
              </node>
              <node concept="37vLTw" id="64TdDMDByl4" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBylV" resolve="H_5" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="30zMb0d_9I2" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0d_gid" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0d_gif" role="3SKWNk">
            <property role="3SKdUp" value="Verify that the derived binder is the same as the one from the transcript" />
          </node>
        </node>
        <node concept="3s6pcg" id="30zMb0d_d_1" role="3cqZAp">
          <node concept="2YIFZM" id="30zMb0d_e8V" role="3s6pch">
            <ref role="37wK5l" to="d2b1:2OJAT4DNwgk" resolve="combine_8_into_256" />
            <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
            <node concept="37vLTw" id="30zMb0d_eGU" role="37wK5m">
              <ref role="3cqZAo" node="64TdDMDBylY" resolve="REAL_BINDER" />
            </node>
          </node>
          <node concept="2YIFZM" id="30zMb0d_feU" role="3s6pci">
            <ref role="37wK5l" to="d2b1:2OJAT4DNwgk" resolve="combine_8_into_256" />
            <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
            <node concept="37vLTw" id="30zMb0d_fuT" role="37wK5m">
              <ref role="3cqZAo" node="64TdDMDBykZ" resolve="derived_binder" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMDByl6" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDMDByl7" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDByl8" role="3cpWs9">
            <property role="TrG5h" value="ETS" />
            <node concept="10Q1$e" id="64TdDMDByl9" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDByla" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDBylb" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <node concept="37vLTw" id="64TdDMDBylc" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBykm" resolve="ES" />
              </node>
              <node concept="Xl_RD" id="64TdDMDByld" role="37wK5m">
                <property role="Xl_RC" value="c e traffic" />
              </node>
              <node concept="37vLTw" id="64TdDMDByle" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBylS" resolve="H_1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMDBylf" role="3cqZAp" />
        <node concept="3cpWs8" id="64TdDMDBylh" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDByli" role="3cpWs9">
            <property role="TrG5h" value="tk_early" />
            <node concept="10Q1$e" id="64TdDMDBylj" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDBylk" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDByll" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
              <node concept="37vLTw" id="64TdDMDBylm" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDByl8" resolve="ETS" />
              </node>
              <node concept="3cmrfG" id="64TdDMDByln" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="64TdDMDBylo" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDBylp" role="3cpWs9">
            <property role="TrG5h" value="iv_early" />
            <node concept="10Q1$e" id="64TdDMDBylq" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDBylr" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDByls" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
              <node concept="37vLTw" id="64TdDMDBylt" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDByl8" resolve="ETS" />
              </node>
              <node concept="3cmrfG" id="64TdDMDBylu" role="37wK5m">
                <property role="3cmrfH" value="12" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="64TdDMDBylv" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dAcLz" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dAcL_" role="3SKWNk">
            <property role="3SKdUp" value="decrypt the plaintext" />
          </node>
        </node>
        <node concept="3cpWs8" id="64TdDMDBylx" role="3cqZAp">
          <node concept="3cpWsn" id="64TdDMDByly" role="3cpWs9">
            <property role="TrG5h" value="dns_plaintext" />
            <node concept="10Q1$e" id="64TdDMDBylz" role="1tU5fm">
              <node concept="3qc1$W" id="64TdDMDByl$" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="64TdDMDByl_" role="33vP2m">
              <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
              <ref role="37wK5l" to="liel:2OJAT4DzYl6" resolve="aes_gcm_decrypt" />
              <node concept="37vLTw" id="64TdDMDBylA" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDByli" resolve="tk_early" />
              </node>
              <node concept="37vLTw" id="64TdDMDBylB" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBylp" resolve="iv_early" />
              </node>
              <node concept="37vLTw" id="64TdDMDBylC" role="37wK5m">
                <ref role="3cqZAo" node="64TdDMDBym1" resolve="dns_ciphertext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="64TdDN5wB76" role="3cqZAp">
          <node concept="37vLTw" id="64TdDNdwwEk" role="3cqZAk">
            <ref role="3cqZAo" node="64TdDMDByly" resolve="dns_plaintext" />
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="64TdDMDBylM" role="3clF45">
        <node concept="3qc1$W" id="64TdDMDBylO" role="10Q1$1">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="64TdDMDBylP" role="3clF46">
        <property role="TrG5h" value="PSK" />
        <node concept="10Q1$e" id="64TdDMDBylQ" role="1tU5fm">
          <node concept="3qc1$W" id="64TdDMDBylR" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="64TdDMDBylS" role="3clF46">
        <property role="TrG5h" value="H_1" />
        <node concept="10Q1$e" id="64TdDMDBylT" role="1tU5fm">
          <node concept="3qc1$W" id="64TdDMDBylU" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="64TdDMDBylV" role="3clF46">
        <property role="TrG5h" value="H_5" />
        <node concept="10Q1$e" id="64TdDMDBylW" role="1tU5fm">
          <node concept="3qc1$W" id="64TdDMDBylX" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="64TdDMDBylY" role="3clF46">
        <property role="TrG5h" value="REAL_BINDER" />
        <node concept="10Q1$e" id="64TdDMDBylZ" role="1tU5fm">
          <node concept="3qc1$W" id="64TdDMDBym0" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="64TdDMDBym1" role="3clF46">
        <property role="TrG5h" value="dns_ciphertext" />
        <node concept="10Q1$e" id="64TdDMDBym2" role="1tU5fm">
          <node concept="3qc1$W" id="64TdDMDBym3" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="64TdDMDBylL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IcGJgA1y3F" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dAdoj" role="jymVt">
      <property role="DRO8Q" value="This is the baseline 1RTT handshake key derivation" />
    </node>
    <node concept="DJdLC" id="30zMb0dAg5u" role="jymVt">
      <property role="DRO8Q" value="Steps:" />
    </node>
    <node concept="DJdLC" id="30zMb0dAii0" role="jymVt">
      <property role="DRO8Q" value="(1) Verify and derive the EC DHE secret" />
    </node>
    <node concept="DJdLC" id="30zMb0dAj9m" role="jymVt">
      <property role="DRO8Q" value="(2) Compute server handshake keys" />
    </node>
    <node concept="DJdLC" id="30zMb0dAknw" role="jymVt">
      <property role="DRO8Q" value="(3) Decrypt the encrypted parts of CT3 (CH || SH || ServExt) to get TR3" />
    </node>
    <node concept="DJdLC" id="30zMb0dAllE" role="jymVt">
      <property role="DRO8Q" value="(3) Hash TR3" />
    </node>
    <node concept="DJdLC" id="30zMb0dAm82" role="jymVt">
      <property role="DRO8Q" value="(5) Derive client traffic keys and decrypt ciphertext" />
    </node>
    <node concept="2tJIrI" id="30zMb0dH5Hf" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dH658" role="jymVt">
      <property role="DRO8Q" value="Inputs: DHE share and public points A and B" />
    </node>
    <node concept="DJdLC" id="30zMb0dH6ye" role="jymVt">
      <property role="DRO8Q" value="transcript hash H2 = Hash(CH || SH)" />
    </node>
    <node concept="DJdLC" id="30zMb0dH6WS" role="jymVt">
      <property role="DRO8Q" value="CH_SH - Transcript ClientHello || ServerHello and its length" />
    </node>
    <node concept="DJdLC" id="30zMb0dH7r8" role="jymVt">
      <property role="DRO8Q" value="ServExt_ct - the encrypted Server Extensions and its length" />
    </node>
    <node concept="DJdLC" id="30zMb0dH7PM" role="jymVt">
      <property role="DRO8Q" value="ServExt_tail_ct is the part of ServExt_ct that doesn't fit into a whole SHA block" />
    </node>
    <node concept="DJdLC" id="30zMb0dHaYS" role="jymVt">
      <property role="DRO8Q" value="appl_ct - the application data ciphertext" />
    </node>
    <node concept="2YIFZL" id="6IcGJgA1ynG" role="jymVt">
      <property role="TrG5h" value="get1RTT" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6IcGJgA1ynH" role="3clF47">
        <node concept="3clFbH" id="30zMb0dAn9p" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1yo1" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yo2" role="3cpWs9">
            <property role="TrG5h" value="ES" />
            <node concept="10Q1$e" id="6IcGJgA1yo3" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yo4" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yo5" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
              <node concept="2YIFZM" id="6IcGJgA1yo6" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                <node concept="3cmrfG" id="6IcGJgA1yo7" role="37wK5m">
                  <property role="3cmrfH" value="32" />
                </node>
              </node>
              <node concept="2YIFZM" id="6IcGJgA1yo8" role="37wK5m">
                <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <node concept="3cmrfG" id="6IcGJgA1yo9" role="37wK5m">
                  <property role="3cmrfH" value="32" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA1yob" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yoc" role="3cpWs9">
            <property role="TrG5h" value="dES" />
            <node concept="10Q1$e" id="6IcGJgA1yod" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yoe" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yof" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1yog" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yo2" resolve="ES" />
              </node>
              <node concept="Xl_RD" id="6IcGJgA1yoh" role="37wK5m">
                <property role="Xl_RC" value="derived" />
              </node>
              <node concept="2YIFZM" id="6IcGJgA1yoi" role="37wK5m">
                <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
                <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79VpMk" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dAo0Y" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dAo10" role="3SKWNk">
            <property role="3SKdUp" value="This function's goals:" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dAoWh" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dAoWj" role="3SKWNk">
            <property role="3SKdUp" value="(1) Verify that G^sk = A where G is the generator of secp256" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dApQW" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dApQY" role="3SKWNk">
            <property role="3SKdUp" value="(2) Compute B^sk to obtain the DHE secret" />
          </node>
        </node>
        <node concept="3cpWs8" id="1fN2f79SIBp" role="3cqZAp">
          <node concept="3cpWsn" id="1fN2f79SIBs" role="3cpWs9">
            <property role="TrG5h" value="DHE" />
            <node concept="10Q1$e" id="1fN2f79SIZ$" role="1tU5fm">
              <node concept="3qc1$W" id="1fN2f79SIBn" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="1fN2f79SKkA" role="33vP2m">
              <ref role="1Pybhc" to="rktg:2OJAT4DN4UY" resolve="ECDHE" />
              <ref role="37wK5l" to="rktg:1fN2f79SE7n" resolve="performDHExchange" />
              <node concept="37vLTw" id="1fN2f79SKvD" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqd" resolve="Ax" />
              </node>
              <node concept="37vLTw" id="1fN2f79SKxG" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqf" resolve="Ay" />
              </node>
              <node concept="37vLTw" id="1fN2f79SK$O" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqh" resolve="Bx" />
              </node>
              <node concept="37vLTw" id="1fN2f79SKB5" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqj" resolve="By" />
              </node>
              <node concept="37vLTw" id="1fN2f79SLye" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqb" resolve="DHE_share" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79SMMB" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1yot" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1you" role="3cpWs9">
            <property role="TrG5h" value="HS" />
            <node concept="10Q1$e" id="6IcGJgA1yov" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yow" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yox" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1yoy" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoc" resolve="dES" />
              </node>
              <node concept="37vLTw" id="1fN2f79SLEJ" role="37wK5m">
                <ref role="3cqZAo" node="1fN2f79SIBs" resolve="DHE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fN2f79SOrb" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1yo_" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yoA" role="3cpWs9">
            <property role="TrG5h" value="SHTS" />
            <node concept="10Q1$e" id="6IcGJgA1yoB" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yoC" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yoD" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1yoE" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1you" resolve="HS" />
              </node>
              <node concept="Xl_RD" id="6IcGJgA1yoF" role="37wK5m">
                <property role="Xl_RC" value="s hs traffic" />
              </node>
              <node concept="37vLTw" id="6IcGJgA1yoG" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yql" resolve="H2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1yoH" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dArf_" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dI8Mb" role="3SKWNk">
            <property role="3SKdUp" value="traffic key and iv for &quot;server handshake&quot; messages" />
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA1yoI" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yoJ" role="3cpWs9">
            <property role="TrG5h" value="tk_shs" />
            <node concept="10Q1$e" id="6IcGJgA1yoK" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yoL" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yoM" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1yoN" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoA" resolve="SHTS" />
              </node>
              <node concept="3cmrfG" id="6IcGJgA1yoO" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA1yoP" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yoQ" role="3cpWs9">
            <property role="TrG5h" value="iv_shs" />
            <node concept="10Q1$e" id="6IcGJgA1yoR" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yoS" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yoT" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
              <node concept="37vLTw" id="6IcGJgA1yoU" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoA" resolve="SHTS" />
              </node>
              <node concept="3cmrfG" id="6IcGJgA1yoV" role="37wK5m">
                <property role="3cmrfH" value="12" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1yoW" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1yoX" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yoY" role="3cpWs9">
            <property role="TrG5h" value="dHS" />
            <node concept="10Q1$e" id="6IcGJgA1yoZ" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yp0" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yp1" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1yp2" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1you" resolve="HS" />
              </node>
              <node concept="Xl_RD" id="6IcGJgA1yp3" role="37wK5m">
                <property role="Xl_RC" value="derived" />
              </node>
              <node concept="2YIFZM" id="6IcGJgA1yp4" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
                <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1yp5" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1yp6" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1yp7" role="3cpWs9">
            <property role="TrG5h" value="MS" />
            <node concept="10Q1$e" id="6IcGJgA1yp8" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yp9" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1ypa" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1ypb" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoY" resolve="dHS" />
              </node>
              <node concept="2YIFZM" id="6IcGJgA1ypc" role="37wK5m">
                <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <node concept="3cmrfG" id="6IcGJgA1ypd" role="37wK5m">
                  <property role="3cmrfH" value="32" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1ype" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dGLEP" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dGLER" role="3SKWNk">
            <property role="3SKdUp" value="Decrypt the server extensions with the server's handshake traffic keys" />
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA1ypf" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1ypg" role="3cpWs9">
            <property role="TrG5h" value="ServExt" />
            <node concept="10Q1$e" id="6IcGJgA1yph" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1ypi" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1ypj" role="33vP2m">
              <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
              <ref role="37wK5l" to="liel:2OJAT4DzYl6" resolve="aes_gcm_decrypt" />
              <node concept="37vLTw" id="6IcGJgA1ypk" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoJ" resolve="tk_shs" />
              </node>
              <node concept="37vLTw" id="6IcGJgA1ypl" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoQ" resolve="iv_shs" />
              </node>
              <node concept="37vLTw" id="6IcGJgA1ypm" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqr" resolve="ServExt_ct" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgIWnV6" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dGMyC" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dGMyE" role="3SKWNk">
            <property role="3SKdUp" value="Now, we need to decrypt the ServExt_tail." />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dGN6P" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dGN6R" role="3SKWNk">
            <property role="3SKdUp" value="As we are using AES GCM, we need to find the exact block number that the tail starts at." />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dGQBo" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dGQBq" role="3SKWNk">
            <property role="3SKdUp" value="One AES block = 16 bytes" />
          </node>
        </node>
        <node concept="3cpWs8" id="2ieUQWSqa0K" role="3cqZAp">
          <node concept="3cpWsn" id="2ieUQWSqa0L" role="3cpWs9">
            <property role="TrG5h" value="gcm_block_number" />
            <node concept="3qc1$W" id="2ieUQWSqa0M" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="17qRlL" id="2ieUQWSqa0N" role="33vP2m">
              <node concept="3SuevK" id="2ieUQWSqa0O" role="3uHU7w">
                <node concept="3qc1$W" id="2ieUQWSqa0P" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="3cmrfG" id="2ieUQWSqa0Q" role="3Sueug">
                  <property role="3cmrfH" value="4" />
                </node>
              </node>
              <node concept="3SuevK" id="2ieUQWSqa0R" role="3uHU7B">
                <node concept="3qc1$W" id="2ieUQWSqa0S" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="FJ1c_" id="2ieUQWSqa0T" role="3Sueug">
                  <node concept="3SuevK" id="2ieUQWSqa0U" role="3uHU7w">
                    <node concept="3qc1$W" id="2ieUQWSqa0V" role="3SuevR">
                      <property role="3qc1Xj" value="8" />
                    </node>
                    <node concept="3cmrfG" id="2ieUQWSqa0W" role="3Sueug">
                      <property role="3cmrfH" value="64" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2ieUQWSqa12" role="3uHU7B">
                    <ref role="3cqZAo" node="6IcGJgA1$x2" resolve="ServExt_len" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2ieUQWSq9Aj" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dGWRg" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dGWRi" role="3SKWNk">
            <property role="3SKdUp" value="Returns the decryption starting at the GCM counter " />
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgIWomC" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgIWomF" role="3cpWs9">
            <property role="TrG5h" value="Serv_Ext_tail" />
            <node concept="10Q1$e" id="6IcGJgIWoJN" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgIWomA" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgIWq1i" role="33vP2m">
              <ref role="37wK5l" to="liel:6IcGJgJ0RWl" resolve="aes_gcm_decrypt" />
              <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
              <node concept="37vLTw" id="6IcGJgIWq3l" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoJ" resolve="tk_shs" />
              </node>
              <node concept="37vLTw" id="6IcGJgIWq5E" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yoQ" resolve="iv_shs" />
              </node>
              <node concept="37vLTw" id="6IcGJgIWqr3" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1$TN" resolve="ServExt_tail_ct" />
              </node>
              <node concept="37vLTw" id="2ieUQWSqfRs" role="37wK5m">
                <ref role="3cqZAo" node="2ieUQWSqa0L" resolve="gcm_block_number" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1ypn" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dH0RC" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dH0RE" role="3SKWNk">
            <property role="3SKdUp" value="This transcript is CH || SH || ServExt" />
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA24Ku" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA24Kx" role="3cpWs9">
            <property role="TrG5h" value="TR3" />
            <node concept="10Q1$e" id="6IcGJgA257t" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA24Ks" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA25BM" role="33vP2m">
              <ref role="37wK5l" to="d2b1:2OJAT4$NxZ8" resolve="concat" />
              <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
              <node concept="37vLTw" id="6IcGJgA25DR" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqo" resolve="CH_SH" />
              </node>
              <node concept="37vLTw" id="6IcGJgA25Mg" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1ypg" resolve="ServExt" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA24m1" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dH1ON" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dH1OP" role="3SKWNk">
            <property role="3SKdUp" value="As we don't know the true length of ServExt, the variable's size is a fixed upper bound" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dH2yA" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dH2yC" role="3SKWNk">
            <property role="3SKdUp" value="However, we only require a hash of the true transcript, which is a prefix of the variable" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dH5a_" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dH5aB" role="3SKWNk">
            <property role="3SKdUp" value="of length CH_SH_len + ServExt_len" />
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA28t8" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA28tb" role="3cpWs9">
            <property role="TrG5h" value="H3" />
            <node concept="10Q1$e" id="6IcGJgA28Pl" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA28t6" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA29gO" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
              <ref role="37wK5l" to="d2b1:6IcGJgybQ6o" resolve="sha2_of_prefix" />
              <node concept="37vLTw" id="6IcGJgA29kv" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA24Kx" resolve="TR3" />
              </node>
              <node concept="3cpWs3" id="7hpWUTxJia7" role="37wK5m">
                <node concept="37vLTw" id="7hpWUTxJiyp" role="3uHU7B">
                  <ref role="3cqZAo" node="6IcGJgA1$5X" resolve="CH_SH_len" />
                </node>
                <node concept="37vLTw" id="6IcGJgA2aUt" role="3uHU7w">
                  <ref role="3cqZAo" node="6IcGJgA1$x2" resolve="ServExt_len" />
                </node>
              </node>
              <node concept="37vLTw" id="6IcGJgIWrxU" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgIWomF" resolve="Serv_Ext_tail" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA283Y" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1ypx" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1ypy" role="3cpWs9">
            <property role="TrG5h" value="CATS" />
            <node concept="10Q1$e" id="6IcGJgA1ypz" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1yp$" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1yp_" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="6IcGJgA1ypA" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yp7" resolve="MS" />
              </node>
              <node concept="Xl_RD" id="6IcGJgA1ypB" role="37wK5m">
                <property role="Xl_RC" value="c ap traffic" />
              </node>
              <node concept="37vLTw" id="6IcGJgA2hgY" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA28tb" resolve="H3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1ypD" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1ypE" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1ypF" role="3cpWs9">
            <property role="TrG5h" value="tk_capp" />
            <node concept="10Q1$e" id="6IcGJgA1ypG" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1ypH" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1ypI" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
              <node concept="37vLTw" id="6IcGJgA1ypJ" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1ypy" resolve="CATS" />
              </node>
              <node concept="3cmrfG" id="6IcGJgA1ypK" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IcGJgA1ypL" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1ypM" role="3cpWs9">
            <property role="TrG5h" value="iv_capp" />
            <node concept="10Q1$e" id="6IcGJgA1ypN" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1ypO" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1ypP" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
              <node concept="37vLTw" id="6IcGJgA1ypQ" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1ypy" resolve="CATS" />
              </node>
              <node concept="3cmrfG" id="6IcGJgA1ypR" role="37wK5m">
                <property role="3cmrfH" value="12" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1ypS" role="3cqZAp" />
        <node concept="3cpWs8" id="6IcGJgA1ypT" role="3cqZAp">
          <node concept="3cpWsn" id="6IcGJgA1ypU" role="3cpWs9">
            <property role="TrG5h" value="dns_plaintext" />
            <node concept="10Q1$e" id="6IcGJgA1ypV" role="1tU5fm">
              <node concept="3qc1$W" id="6IcGJgA1ypW" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="6IcGJgA1ypX" role="33vP2m">
              <ref role="37wK5l" to="liel:2OJAT4DzYl6" resolve="aes_gcm_decrypt" />
              <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
              <node concept="37vLTw" id="6IcGJgA1ypY" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1ypF" resolve="tk_capp" />
              </node>
              <node concept="37vLTw" id="6IcGJgA1ypZ" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1ypM" resolve="iv_capp" />
              </node>
              <node concept="37vLTw" id="6IcGJgA1yq0" role="37wK5m">
                <ref role="3cqZAo" node="6IcGJgA1yqu" resolve="appl_ct" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6IcGJgA1yq1" role="3cqZAp" />
        <node concept="3cpWs6" id="6IcGJgA1yq2" role="3cqZAp">
          <node concept="2ShNRf" id="6IcGJgA1yq3" role="3cqZAk">
            <node concept="3g6Rrh" id="6IcGJgA1yq4" role="2ShVmc">
              <node concept="10Q1$e" id="6IcGJgA1yq5" role="3g7fb8">
                <node concept="3qc1$W" id="6IcGJgA1yq6" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="37vLTw" id="6IcGJgA1yq7" role="3g7hyw">
                <ref role="3cqZAo" node="6IcGJgA1ypU" resolve="dns_plaintext" />
              </node>
              <node concept="37vLTw" id="6IcGJgDr9c3" role="3g7hyw">
                <ref role="3cqZAo" node="6IcGJgA1ypF" resolve="tk_capp" />
              </node>
              <node concept="37vLTw" id="6IcGJgDr9yJ" role="3g7hyw">
                <ref role="3cqZAo" node="6IcGJgA1ypM" resolve="iv_capp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="6IcGJgA1yq8" role="3clF45">
        <node concept="10Q1$e" id="6IcGJgA1yq9" role="10Q1$1">
          <node concept="3qc1$W" id="6IcGJgA1yqa" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqb" role="3clF46">
        <property role="TrG5h" value="DHE_share" />
        <node concept="3qc1$W" id="6IcGJgA1yqc" role="1tU5fm">
          <property role="3qc1Xj" value="256" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqd" role="3clF46">
        <property role="TrG5h" value="Ax" />
        <node concept="2D7PWU" id="6IcGJgA1yqe" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqf" role="3clF46">
        <property role="TrG5h" value="Ay" />
        <node concept="2D7PWU" id="6IcGJgA1yqg" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqh" role="3clF46">
        <property role="TrG5h" value="Bx" />
        <node concept="2D7PWU" id="6IcGJgA1yqi" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqj" role="3clF46">
        <property role="TrG5h" value="By" />
        <node concept="2D7PWU" id="6IcGJgA1yqk" role="1tU5fm">
          <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yql" role="3clF46">
        <property role="TrG5h" value="H2" />
        <node concept="10Q1$e" id="6IcGJgA1yqm" role="1tU5fm">
          <node concept="3qc1$W" id="6IcGJgA1yqn" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqo" role="3clF46">
        <property role="TrG5h" value="CH_SH" />
        <node concept="10Q1$e" id="6IcGJgA1yqp" role="1tU5fm">
          <node concept="3qc1$W" id="6IcGJgA1yqq" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1$5X" role="3clF46">
        <property role="TrG5h" value="CH_SH_len" />
        <node concept="3qc1$W" id="6IcGJgA1$rP" role="1tU5fm">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqr" role="3clF46">
        <property role="TrG5h" value="ServExt_ct" />
        <node concept="10Q1$e" id="6IcGJgA1yqs" role="1tU5fm">
          <node concept="3qc1$W" id="6IcGJgA1yqt" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1$x2" role="3clF46">
        <property role="TrG5h" value="ServExt_len" />
        <node concept="3qc1$W" id="6IcGJgA1$QW" role="1tU5fm">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1$TN" role="3clF46">
        <property role="TrG5h" value="ServExt_tail_ct" />
        <node concept="10Q1$e" id="6IcGJgA1_h2" role="1tU5fm">
          <node concept="3qc1$W" id="6IcGJgA1_fJ" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IcGJgA1yqu" role="3clF46">
        <property role="TrG5h" value="appl_ct" />
        <node concept="10Q1$e" id="6IcGJgA1yqv" role="1tU5fm">
          <node concept="3qc1$W" id="6IcGJgA1yqw" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6IcGJgA1yqx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IcGJgA1ydF" role="jymVt" />
    <node concept="2tJIrI" id="30zMb0dAsKj" role="jymVt" />
    <node concept="1X3_iC" id="30zMb0dBkEm" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="2YIFZL" id="7hpWUTz9SYB" role="8Wnug">
        <property role="TrG5h" value="get1RTT_resumption" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="7hpWUTz9SYC" role="3clF47">
          <node concept="3clFbH" id="7hpWUTz9SYD" role="3cqZAp" />
          <node concept="3clFbH" id="7hpWUTz9SYV" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9SYW" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SYX" role="3cpWs9">
              <property role="TrG5h" value="ES" />
              <node concept="10Q1$e" id="7hpWUTz9SYY" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SYZ" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZ0" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="2YIFZM" id="7hpWUTz9SZ1" role="37wK5m">
                  <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                  <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                  <node concept="3cmrfG" id="7hpWUTz9SZ2" role="37wK5m">
                    <property role="3cmrfH" value="32" />
                  </node>
                </node>
                <node concept="37vLTw" id="7hpWUTz9Wbj" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9URm" resolve="PSK" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9SZ5" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9SZ6" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SZ7" role="3cpWs9">
              <property role="TrG5h" value="dES" />
              <node concept="10Q1$e" id="7hpWUTz9SZ8" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SZ9" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZa" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9SZb" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SYX" resolve="ES" />
                </node>
                <node concept="Xl_RD" id="7hpWUTz9SZc" role="37wK5m">
                  <property role="Xl_RC" value="derived" />
                </node>
                <node concept="2YIFZM" id="7hpWUTz9SZd" role="37wK5m">
                  <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
                  <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1fN2f79VqLJ" role="3cqZAp" />
          <node concept="3cpWs8" id="1fN2f79Vrzo" role="3cqZAp">
            <node concept="3cpWsn" id="1fN2f79Vrzp" role="3cpWs9">
              <property role="TrG5h" value="DHE" />
              <node concept="10Q1$e" id="1fN2f79Vrzq" role="1tU5fm">
                <node concept="3qc1$W" id="1fN2f79Vrzr" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="1fN2f79Vrzs" role="33vP2m">
                <ref role="37wK5l" to="rktg:1fN2f79SE7n" resolve="performDHExchange" />
                <ref role="1Pybhc" to="rktg:2OJAT4DN4UY" resolve="ECDHE" />
                <node concept="37vLTw" id="1fN2f79Vrzt" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1t" resolve="A_x" />
                </node>
                <node concept="37vLTw" id="1fN2f79Vrzu" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1v" resolve="A_y" />
                </node>
                <node concept="37vLTw" id="1fN2f79Vrzv" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1x" resolve="B_x" />
                </node>
                <node concept="37vLTw" id="1fN2f79Vrzw" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1z" resolve="B_y" />
                </node>
                <node concept="37vLTw" id="1fN2f79VuRX" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1r" resolve="ecdhe_sk" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="1fN2f79VraK" role="3cqZAp" />
          <node concept="3clFbH" id="7hpWUTz9SZn" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9SZo" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SZp" role="3cpWs9">
              <property role="TrG5h" value="HS" />
              <node concept="10Q1$e" id="7hpWUTz9SZq" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SZr" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZs" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9SZt" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZ7" resolve="dES" />
                </node>
                <node concept="37vLTw" id="1fN2f79VrZ1" role="37wK5m">
                  <ref role="3cqZAo" node="1fN2f79Vrzp" resolve="DHE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9SZv" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9SZw" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SZx" role="3cpWs9">
              <property role="TrG5h" value="SHTS" />
              <node concept="10Q1$e" id="7hpWUTz9SZy" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SZz" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZ$" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9SZ_" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZp" resolve="HS" />
                </node>
                <node concept="Xl_RD" id="7hpWUTz9SZA" role="37wK5m">
                  <property role="Xl_RC" value="s hs traffic" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9SZB" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1_" resolve="H_2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9SZC" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9SZD" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SZE" role="3cpWs9">
              <property role="TrG5h" value="tk_shs" />
              <node concept="10Q1$e" id="7hpWUTz9SZF" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SZG" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZH" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9SZI" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZx" resolve="SHTS" />
                </node>
                <node concept="3cmrfG" id="7hpWUTz9SZJ" role="37wK5m">
                  <property role="3cmrfH" value="16" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7hpWUTz9SZK" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SZL" role="3cpWs9">
              <property role="TrG5h" value="iv_shs" />
              <node concept="10Q1$e" id="7hpWUTz9SZM" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SZN" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZO" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9SZP" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZx" resolve="SHTS" />
                </node>
                <node concept="3cmrfG" id="7hpWUTz9SZQ" role="37wK5m">
                  <property role="3cmrfH" value="12" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9SZR" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9SZS" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9SZT" role="3cpWs9">
              <property role="TrG5h" value="dHS" />
              <node concept="10Q1$e" id="7hpWUTz9SZU" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9SZV" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9SZW" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9SZX" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZp" resolve="HS" />
                </node>
                <node concept="Xl_RD" id="7hpWUTz9SZY" role="37wK5m">
                  <property role="Xl_RC" value="derived" />
                </node>
                <node concept="2YIFZM" id="7hpWUTz9SZZ" role="37wK5m">
                  <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
                  <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T00" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T01" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T02" role="3cpWs9">
              <property role="TrG5h" value="MS" />
              <node concept="10Q1$e" id="7hpWUTz9T03" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T04" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T05" role="33vP2m">
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
                <node concept="37vLTw" id="7hpWUTz9T06" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZT" resolve="dHS" />
                </node>
                <node concept="2YIFZM" id="7hpWUTz9T07" role="37wK5m">
                  <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                  <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                  <node concept="3cmrfG" id="7hpWUTz9T08" role="37wK5m">
                    <property role="3cmrfH" value="32" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T09" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T0a" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T0b" role="3cpWs9">
              <property role="TrG5h" value="ct3_dec" />
              <node concept="10Q1$e" id="7hpWUTz9T0c" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T0d" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T0e" role="33vP2m">
                <ref role="37wK5l" to="liel:2OJAT4DzYl6" resolve="aes_gcm_decrypt" />
                <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
                <node concept="37vLTw" id="7hpWUTz9T0f" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZE" resolve="tk_shs" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0g" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZL" resolve="iv_shs" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0h" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1H" resolve="ct_3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="2ieUQWSqhgh" role="3cqZAp" />
          <node concept="3cpWs8" id="2ieUQWSqhlM" role="3cqZAp">
            <node concept="3cpWsn" id="2ieUQWSqhlN" role="3cpWs9">
              <property role="TrG5h" value="num_aes_blocks" />
              <node concept="3qc1$W" id="2ieUQWSqhlO" role="1tU5fm">
                <property role="3qc1Xj" value="8" />
              </node>
              <node concept="17qRlL" id="2ieUQWSqhlP" role="33vP2m">
                <node concept="3SuevK" id="2ieUQWSqhlQ" role="3uHU7w">
                  <node concept="3qc1$W" id="2ieUQWSqhlR" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="3cmrfG" id="2ieUQWSqhlS" role="3Sueug">
                    <property role="3cmrfH" value="4" />
                  </node>
                </node>
                <node concept="3SuevK" id="2ieUQWSqhlT" role="3uHU7B">
                  <node concept="3qc1$W" id="2ieUQWSqhlU" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="FJ1c_" id="2ieUQWSqhlV" role="3Sueug">
                    <node concept="3SuevK" id="2ieUQWSqhlW" role="3uHU7w">
                      <node concept="3qc1$W" id="2ieUQWSqhlX" role="3SuevR">
                        <property role="3qc1Xj" value="8" />
                      </node>
                      <node concept="3cmrfG" id="2ieUQWSqhlY" role="3Sueug">
                        <property role="3cmrfH" value="64" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2ieUQWSqhm4" role="3uHU7B">
                      <ref role="3cqZAo" node="7hpWUTz9T1K" resolve="ct3_length" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T0i" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T0j" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T0k" role="3cpWs9">
              <property role="TrG5h" value="ct3_lb_dec" />
              <node concept="10Q1$e" id="7hpWUTz9T0l" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T0m" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T0n" role="33vP2m">
                <ref role="37wK5l" to="liel:6IcGJgJ0RWl" resolve="aes_gcm_decrypt" />
                <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
                <node concept="37vLTw" id="7hpWUTz9T0o" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZE" resolve="tk_shs" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0p" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9SZL" resolve="iv_shs" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0q" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1M" resolve="ct_3_lb" />
                </node>
                <node concept="37vLTw" id="2ieUQWSqiYt" role="37wK5m">
                  <ref role="3cqZAo" node="2ieUQWSqhlN" resolve="num_aes_blocks" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T0r" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T0s" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T0t" role="3cpWs9">
              <property role="TrG5h" value="preimage_h3" />
              <node concept="10Q1$e" id="7hpWUTz9T0u" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T0v" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T0w" role="33vP2m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <ref role="37wK5l" to="d2b1:2OJAT4$NxZ8" resolve="concat" />
                <node concept="37vLTw" id="7hpWUTz9T0x" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1C" resolve="pt2" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0y" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0b" resolve="ct3_dec" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T0z" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T0$" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T0_" role="3cpWs9">
              <property role="TrG5h" value="H_3" />
              <node concept="10Q1$e" id="7hpWUTz9T0A" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T0B" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T0C" role="33vP2m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
                <ref role="37wK5l" to="d2b1:6IcGJgybQ6o" resolve="sha2_of_prefix" />
                <node concept="37vLTw" id="7hpWUTz9T0D" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0t" resolve="preimage_h3" />
                </node>
                <node concept="3cpWs3" id="7hpWUTz9T0E" role="37wK5m">
                  <node concept="37vLTw" id="7hpWUTz9T0F" role="3uHU7B">
                    <ref role="3cqZAo" node="7hpWUTz9T1F" resolve="pt2_len" />
                  </node>
                  <node concept="37vLTw" id="7hpWUTz9T0G" role="3uHU7w">
                    <ref role="3cqZAo" node="7hpWUTz9T1K" resolve="ct3_length" />
                  </node>
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0H" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0k" resolve="ct3_lb_dec" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T0I" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T0J" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T0K" role="3cpWs9">
              <property role="TrG5h" value="CATS" />
              <node concept="10Q1$e" id="7hpWUTz9T0L" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T0M" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T0N" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9T0O" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T02" resolve="MS" />
                </node>
                <node concept="Xl_RD" id="7hpWUTz9T0P" role="37wK5m">
                  <property role="Xl_RC" value="c ap traffic" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T0Q" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0_" resolve="H_3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T0R" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T0S" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T0T" role="3cpWs9">
              <property role="TrG5h" value="tk_capp" />
              <node concept="10Q1$e" id="7hpWUTz9T0U" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T0V" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T0W" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9T0X" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0K" resolve="CATS" />
                </node>
                <node concept="3cmrfG" id="7hpWUTz9T0Y" role="37wK5m">
                  <property role="3cmrfH" value="16" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7hpWUTz9T0Z" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T10" role="3cpWs9">
              <property role="TrG5h" value="iv_capp" />
              <node concept="10Q1$e" id="7hpWUTz9T11" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T12" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T13" role="33vP2m">
                <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
                <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
                <node concept="37vLTw" id="7hpWUTz9T14" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0K" resolve="CATS" />
                </node>
                <node concept="3cmrfG" id="7hpWUTz9T15" role="37wK5m">
                  <property role="3cmrfH" value="12" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T16" role="3cqZAp" />
          <node concept="3cpWs8" id="7hpWUTz9T17" role="3cqZAp">
            <node concept="3cpWsn" id="7hpWUTz9T18" role="3cpWs9">
              <property role="TrG5h" value="dns_plaintext" />
              <node concept="10Q1$e" id="7hpWUTz9T19" role="1tU5fm">
                <node concept="3qc1$W" id="7hpWUTz9T1a" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="2YIFZM" id="7hpWUTz9T1b" role="33vP2m">
                <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
                <ref role="37wK5l" to="liel:2OJAT4DzYl6" resolve="aes_gcm_decrypt" />
                <node concept="37vLTw" id="7hpWUTz9T1c" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T0T" resolve="tk_capp" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T1d" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T10" resolve="iv_capp" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T1e" role="37wK5m">
                  <ref role="3cqZAo" node="7hpWUTz9T1P" resolve="dns_ciphertext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7hpWUTz9T1f" role="3cqZAp" />
          <node concept="3cpWs6" id="7hpWUTz9T1g" role="3cqZAp">
            <node concept="2ShNRf" id="7hpWUTz9T1h" role="3cqZAk">
              <node concept="3g6Rrh" id="7hpWUTz9T1i" role="2ShVmc">
                <node concept="10Q1$e" id="7hpWUTz9T1j" role="3g7fb8">
                  <node concept="3qc1$W" id="7hpWUTz9T1k" role="10Q1$1">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
                <node concept="37vLTw" id="7hpWUTz9T1l" role="3g7hyw">
                  <ref role="3cqZAo" node="7hpWUTz9T18" resolve="dns_plaintext" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T1m" role="3g7hyw">
                  <ref role="3cqZAo" node="7hpWUTz9T0T" resolve="tk_capp" />
                </node>
                <node concept="37vLTw" id="7hpWUTz9T1n" role="3g7hyw">
                  <ref role="3cqZAo" node="7hpWUTz9T10" resolve="iv_capp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="10Q1$e" id="7hpWUTz9T1o" role="3clF45">
          <node concept="10Q1$e" id="7hpWUTz9T1p" role="10Q1$1">
            <node concept="3qc1$W" id="7hpWUTz9T1q" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9URm" role="3clF46">
          <property role="TrG5h" value="PSK" />
          <node concept="10Q1$e" id="7hpWUTz9VfI" role="1tU5fm">
            <node concept="3qc1$W" id="7hpWUTz9VeK" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1r" role="3clF46">
          <property role="TrG5h" value="ecdhe_sk" />
          <node concept="3qc1$W" id="7hpWUTz9T1s" role="1tU5fm">
            <property role="3qc1Xj" value="256" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1t" role="3clF46">
          <property role="TrG5h" value="A_x" />
          <node concept="2D7PWU" id="7hpWUTz9T1u" role="1tU5fm">
            <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1v" role="3clF46">
          <property role="TrG5h" value="A_y" />
          <node concept="2D7PWU" id="7hpWUTz9T1w" role="1tU5fm">
            <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1x" role="3clF46">
          <property role="TrG5h" value="B_x" />
          <node concept="2D7PWU" id="7hpWUTz9T1y" role="1tU5fm">
            <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1z" role="3clF46">
          <property role="TrG5h" value="B_y" />
          <node concept="2D7PWU" id="7hpWUTz9T1$" role="1tU5fm">
            <ref role="2D7PX4" to="tluv:4RvoraGGpEM" resolve="p256" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1_" role="3clF46">
          <property role="TrG5h" value="H_2" />
          <node concept="10Q1$e" id="7hpWUTz9T1A" role="1tU5fm">
            <node concept="3qc1$W" id="7hpWUTz9T1B" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1C" role="3clF46">
          <property role="TrG5h" value="pt2" />
          <node concept="10Q1$e" id="7hpWUTz9T1D" role="1tU5fm">
            <node concept="3qc1$W" id="7hpWUTz9T1E" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1F" role="3clF46">
          <property role="TrG5h" value="pt2_len" />
          <node concept="3qc1$W" id="7hpWUTz9T1G" role="1tU5fm">
            <property role="3qc1Xj" value="16" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1H" role="3clF46">
          <property role="TrG5h" value="ct_3" />
          <node concept="10Q1$e" id="7hpWUTz9T1I" role="1tU5fm">
            <node concept="3qc1$W" id="7hpWUTz9T1J" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1K" role="3clF46">
          <property role="TrG5h" value="ct3_length" />
          <node concept="3qc1$W" id="7hpWUTz9T1L" role="1tU5fm">
            <property role="3qc1Xj" value="16" />
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1M" role="3clF46">
          <property role="TrG5h" value="ct_3_lb" />
          <node concept="10Q1$e" id="7hpWUTz9T1N" role="1tU5fm">
            <node concept="3qc1$W" id="7hpWUTz9T1O" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7hpWUTz9T1P" role="3clF46">
          <property role="TrG5h" value="dns_ciphertext" />
          <node concept="10Q1$e" id="7hpWUTz9T1Q" role="1tU5fm">
            <node concept="3qc1$W" id="7hpWUTz9T1R" role="10Q1$1">
              <property role="3qc1Xj" value="8" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7hpWUTz9T1S" role="1B3o_S" />
      </node>
    </node>
    <node concept="2tJIrI" id="64TdDNHMZuZ" role="jymVt" />
    <node concept="2tJIrI" id="6IcGJgIXwEK" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dAwEk" role="jymVt">
      <property role="DRO8Q" value="Implements the HS shortcut, where the client's witness is the HS secret " />
    </node>
    <node concept="DJdLC" id="30zMb0dAyRb" role="jymVt">
      <property role="DRO8Q" value="Steps:" />
    </node>
    <node concept="DJdLC" id="30zMb0dAzFL" role="jymVt">
      <property role="DRO8Q" value="(1) Derive the server handshake key using the HS" />
    </node>
    <node concept="DJdLC" id="30zMb0dBlR3" role="jymVt">
      <property role="DRO8Q" value="(2) Use it to decrypt the ServerFinished value from the transcript - real_SF" />
    </node>
    <node concept="DJdLC" id="30zMb0dBj5j" role="jymVt">
      <property role="DRO8Q" value="(3) Derive the ServerFinished value using the purported HS - calculated_SF" />
    </node>
    <node concept="DJdLC" id="30zMb0dBlm3" role="jymVt">
      <property role="DRO8Q" value="(4) Verify that the two SF values are the same" />
    </node>
    <node concept="DJdLC" id="30zMb0dBms7" role="jymVt">
      <property role="DRO8Q" value="(5) Using the HS, compute the client traffic keys and decrypt the ciphertext" />
    </node>
    <node concept="2tJIrI" id="30zMb0dB$Os" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dHxpZ" role="jymVt">
      <property role="DRO8Q" value="HS - handshake secret" />
    </node>
    <node concept="DJdLC" id="30zMb0dHxN1" role="jymVt">
      <property role="DRO8Q" value="H2 - Hash(CH || SH)" />
    </node>
    <node concept="DJdLC" id="30zMb0dHyc5" role="jymVt">
      <property role="DRO8Q" value="ServExt - server extensions (the last 36 bytes of which are the ServerFinished ext)" />
    </node>
    <node concept="DJdLC" id="30zMb0dHyKz" role="jymVt">
      <property role="DRO8Q" value="ServExt_tail - the suffix of ServExt that does not fit in a whole SHA block" />
    </node>
    <node concept="2tJIrI" id="30zMb0dHz7S" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dHsXf" role="jymVt">
      <property role="DRO8Q" value="Transcript TR3 = ClientHello || ServerHello || ServExt" />
    </node>
    <node concept="DJdLC" id="30zMb0dHvYl" role="jymVt">
      <property role="DRO8Q" value="note that the final 36 bytes of TR3 contain the ServerFinished extension" />
    </node>
    <node concept="DJdLC" id="30zMb0dHwEW" role="jymVt">
      <property role="DRO8Q" value="TR7 is TR3 without the SF extension; that is, TR7 is TR3 without the last 36 bytes" />
    </node>
    <node concept="2tJIrI" id="30zMb0dHGTy" role="jymVt" />
    <node concept="DJdLC" id="30zMb0dHzA9" role="jymVt">
      <property role="DRO8Q" value="SHA_H_Checkpoint - the H-state of SHA up to the last whole block of TR7" />
    </node>
    <node concept="2YIFZL" id="7L_Qkl0g6pj" role="jymVt">
      <property role="TrG5h" value="get1RTT_HS_new" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7L_Qkl0g6pk" role="3clF47">
        <node concept="3clFbH" id="7L_Qkl0g6pl" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6pm" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6pn" role="3cpWs9">
            <property role="TrG5h" value="SHTS" />
            <node concept="10Q1$e" id="7L_Qkl0g6po" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6pp" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6pq" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="7L_Qkl0g6pr" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6tw" resolve="HS" />
              </node>
              <node concept="Xl_RD" id="7L_Qkl0g6ps" role="37wK5m">
                <property role="Xl_RC" value="s hs traffic" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6pt" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6tz" resolve="H2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6pu" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dI77x" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dI77z" role="3SKWNk">
            <property role="3SKdUp" value="traffic key and iv for &quot;server handshake&quot; messages" />
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6pv" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6pw" role="3cpWs9">
            <property role="TrG5h" value="tk_shs" />
            <node concept="10Q1$e" id="7L_Qkl0g6px" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6py" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6pz" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
              <node concept="37vLTw" id="7L_Qkl0g6p$" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pn" resolve="SHTS" />
              </node>
              <node concept="3cmrfG" id="7L_Qkl0g6p_" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6pA" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6pB" role="3cpWs9">
            <property role="TrG5h" value="iv_shs" />
            <node concept="10Q1$e" id="7L_Qkl0g6pC" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6pD" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6pE" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
              <node concept="37vLTw" id="7L_Qkl0g6pF" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pn" resolve="SHTS" />
              </node>
              <node concept="3cmrfG" id="7L_Qkl0g6pG" role="37wK5m">
                <property role="3cmrfH" value="12" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6pH" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6pI" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6pJ" role="3cpWs9">
            <property role="TrG5h" value="TR3_len" />
            <node concept="3qc1$W" id="7L_Qkl0g6pK" role="1tU5fm">
              <property role="3qc1Xj" value="16" />
            </node>
            <node concept="3cpWs3" id="7L_Qkl0g6pL" role="33vP2m">
              <node concept="37vLTw" id="7L_Qkl0g6pM" role="3uHU7w">
                <ref role="3cqZAo" node="7L_Qkl0g6tI" resolve="ServExt_len" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6pN" role="3uHU7B">
                <ref role="3cqZAo" node="7L_Qkl0g6tD" resolve="CH_SH_len" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6pO" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6pP" role="3cpWs9">
            <property role="TrG5h" value="TR7_len" />
            <node concept="3qc1$W" id="7L_Qkl0g6pQ" role="1tU5fm">
              <property role="3qc1Xj" value="16" />
            </node>
            <node concept="3cpWsd" id="7L_Qkl0g6pR" role="33vP2m">
              <node concept="37vLTw" id="7L_Qkl0g6pS" role="3uHU7B">
                <ref role="3cqZAo" node="7L_Qkl0g6pJ" resolve="TR3_len" />
              </node>
              <node concept="3SuevK" id="7L_Qkl0g6pT" role="3uHU7w">
                <node concept="3qc1$W" id="7L_Qkl0g6pU" role="3SuevR">
                  <property role="3qc1Xj" value="8" />
                </node>
                <node concept="3cmrfG" id="7L_Qkl0g6pV" role="3Sueug">
                  <property role="3cmrfH" value="36" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qklh$qS5" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dHLtg" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dHLti" role="3SKWNk">
            <property role="3SKdUp" value="ServExt = ServExt_head || ServExt_tail" />
          </node>
        </node>
        <node concept="3cpWs8" id="7LvGvKRVAzw" role="3cqZAp">
          <node concept="3cpWsn" id="7LvGvKRVAzz" role="3cpWs9">
            <property role="TrG5h" value="ServExt_head_length" />
            <node concept="3qc1$W" id="7LvGvKRVAzu" role="1tU5fm">
              <property role="3qc1Xj" value="16" />
            </node>
            <node concept="3SuevK" id="7LvGvKRVB44" role="33vP2m">
              <node concept="3qc1$W" id="7LvGvKRVB46" role="3SuevR">
                <property role="3qc1Xj" value="16" />
              </node>
              <node concept="3cpWsd" id="7LvGvKRVC0g" role="3Sueug">
                <node concept="37vLTw" id="7LvGvKRVDhg" role="3uHU7w">
                  <ref role="3cqZAo" node="7L_Qkl0g6tN" resolve="ServExt_tail_len" />
                </node>
                <node concept="37vLTw" id="7LvGvKRVBua" role="3uHU7B">
                  <ref role="3cqZAo" node="7L_Qkl0g6tI" resolve="ServExt_len" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7LvGvKRVRcn" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dHN2_" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dHN2B" role="3SKWNk">
            <property role="3SKdUp" value="To decrypt the ServExt_tail, we need to calculate the GCM counter block number" />
          </node>
        </node>
        <node concept="3cpWs8" id="7LvGvKRVMP_" role="3cqZAp">
          <node concept="3cpWsn" id="7LvGvKRVMPC" role="3cpWs9">
            <property role="TrG5h" value="gcm_block_number" />
            <node concept="3qc1$W" id="7LvGvKRVMPz" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="3SuevK" id="7LvGvKRVNny" role="33vP2m">
              <node concept="3qc1$W" id="7LvGvKRVNn$" role="3SuevR">
                <property role="3qc1Xj" value="8" />
              </node>
              <node concept="FJ1c_" id="7LvGvKRVQF9" role="3Sueug">
                <node concept="3SuevK" id="7LvGvKRVQFU" role="3uHU7w">
                  <node concept="3qc1$W" id="7LvGvKRVQFW" role="3SuevR">
                    <property role="3qc1Xj" value="16" />
                  </node>
                  <node concept="3cmrfG" id="7LvGvKRVQIa" role="3Sueug">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
                <node concept="37vLTw" id="7LvGvKRVQb5" role="3uHU7B">
                  <ref role="3cqZAo" node="7LvGvKRVAzz" resolve="ServExt_head_length" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="30zMb0dHNB9" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dHOv9" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dHOvb" role="3SKWNk">
            <property role="3SKdUp" value="Additionally, the ServExt_tail might not start perfectly at the start of a block" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dHPV3" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dHPV4" role="3SKWNk">
            <property role="3SKdUp" value="That is, the length of ServExt_head may not be a multiple of 16" />
          </node>
        </node>
        <node concept="3cpWs8" id="7LvGvKRVS52" role="3cqZAp">
          <node concept="3cpWsn" id="7LvGvKRVS55" role="3cpWs9">
            <property role="TrG5h" value="offset" />
            <node concept="3qc1$W" id="7LvGvKRVS50" role="1tU5fm">
              <property role="3qc1Xj" value="8" />
            </node>
            <node concept="3SuevK" id="7LvGvKRVSBq" role="33vP2m">
              <node concept="3qc1$W" id="7LvGvKRVSBs" role="3SuevR">
                <property role="3qc1Xj" value="8" />
              </node>
              <node concept="2dk9JS" id="7LvGvKRVTy5" role="3Sueug">
                <node concept="3SuevK" id="7LvGvKRVTzG" role="3uHU7w">
                  <node concept="3qc1$W" id="7LvGvKRVTzI" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="3cmrfG" id="7LvGvKRVTAe" role="3Sueug">
                    <property role="3cmrfH" value="16" />
                  </node>
                </node>
                <node concept="37vLTw" id="7LvGvKRVT02" role="3uHU7B">
                  <ref role="3cqZAo" node="7LvGvKRVAzz" resolve="ServExt_head_length" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7LvGvKRVQKZ" role="3cqZAp" />
        <node concept="3SKdUt" id="7L_Qkl0g6qz" role="3cqZAp">
          <node concept="3SKdUq" id="7L_Qkl0g6q$" role="3SKWNk">
            <property role="3SKdUp" value="This function decrypts the tail with the specific GCM block number and offset within the block" />
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6q_" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6qA" role="3cpWs9">
            <property role="TrG5h" value="ServExt_tail" />
            <node concept="10Q1$e" id="7L_Qkl0g6qB" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6qC" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="LEx6GKm0kb" role="33vP2m">
              <ref role="37wK5l" to="liel:LEx6GKl5uo" resolve="aes_gcm_decrypt_128bytes_middle" />
              <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
              <node concept="37vLTw" id="LEx6GKm0kc" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pw" resolve="tk_shs" />
              </node>
              <node concept="37vLTw" id="LEx6GKm0kd" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pB" resolve="iv_shs" />
              </node>
              <node concept="37vLTw" id="LEx6GKm0ke" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6tK" resolve="ServExt_ct_tail" />
              </node>
              <node concept="37vLTw" id="7LvGvKRVVjV" role="37wK5m">
                <ref role="3cqZAo" node="7LvGvKRVMPC" resolve="gcm_block_number" />
              </node>
              <node concept="37vLTw" id="7LvGvKRVWRu" role="37wK5m">
                <ref role="3cqZAo" node="7LvGvKRVS55" resolve="offset" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6qI" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dBCFk" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dBCFm" role="3SKWNk">
            <property role="3SKdUp" value="This function calculates the hash of TR3 and TR7 where TR7 is TR3 without the last 36 characters" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dBDFP" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dBDFR" role="3SKWNk">
            <property role="3SKdUp" value="starting with the SHA_H_Checkpoint provided as a checkpoint state of SHA that is common to both transcripts." />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dBIUV" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dIccU" role="3SKWNk">
            <property role="3SKdUp" value="The inputs are:" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dId19" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dId1b" role="3SKWNk">
            <property role="3SKdUp" value="- the checkpoint state" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dIdV3" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dIdV5" role="3SKWNk">
            <property role="3SKdUp" value="- the length of TR3 and TR7 (the latter must be a prefix of the former)" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dIeSp" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dIeSr" role="3SKWNk">
            <property role="3SKdUp" value="- the tail of TR3 (the suffix after the checkpoint)" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dIfMO" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dIfMQ" role="3SKWNk">
            <property role="3SKdUp" value="- the length of the tail of TR3" />
          </node>
        </node>
        <node concept="3SKdUt" id="30zMb0dIgNd" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dIgNf" role="3SKWNk">
            <property role="3SKdUp" value="- the length of the tail of TR7" />
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6qJ" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6qK" role="3cpWs9">
            <property role="TrG5h" value="H7_H3" />
            <node concept="10Q1$e" id="7L_Qkl0g6qL" role="1tU5fm">
              <node concept="10Q1$e" id="7L_Qkl0g6qM" role="10Q1$1">
                <node concept="3qc1$W" id="7L_Qkl0g6qN" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0gK7Q" role="33vP2m">
              <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
              <ref role="37wK5l" to="d2b1:7L_Qkl0gEu3" resolve="double_sha_from_checkpoint" />
              <node concept="37vLTw" id="7L_Qkl0gLk5" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0gHcP" resolve="SHA_H_Checkpoint" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0gK7S" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pJ" resolve="TR3_len" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0gK7T" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pP" resolve="TR7_len" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0gK7U" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6qA" resolve="ServExt_tail" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0gK7V" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6tN" resolve="ServExt_tail_len" />
              </node>
              <node concept="3cpWsd" id="7L_Qkl0gK7W" role="37wK5m">
                <node concept="3SuevK" id="7L_Qkl0gK7X" role="3uHU7w">
                  <node concept="3qc1$W" id="7L_Qkl0gK7Y" role="3SuevR">
                    <property role="3qc1Xj" value="8" />
                  </node>
                  <node concept="3cmrfG" id="7L_Qkl0gK7Z" role="3Sueug">
                    <property role="3cmrfH" value="36" />
                  </node>
                </node>
                <node concept="37vLTw" id="7L_Qkl0gK80" role="3uHU7B">
                  <ref role="3cqZAo" node="7L_Qkl0g6tN" resolve="ServExt_tail_len" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6qZ" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6r0" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6r1" role="3cpWs9">
            <property role="TrG5h" value="H_7" />
            <node concept="10Q1$e" id="7L_Qkl0g6r2" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6r3" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="AH0OO" id="7L_Qkl0g6r4" role="33vP2m">
              <node concept="3cmrfG" id="7L_Qkl0g6r5" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6r6" role="AHHXb">
                <ref role="3cqZAo" node="7L_Qkl0g6qK" resolve="H7_H3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6r7" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6r8" role="3cpWs9">
            <property role="TrG5h" value="H_3" />
            <node concept="10Q1$e" id="7L_Qkl0g6r9" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6ra" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="AH0OO" id="7L_Qkl0g6rb" role="33vP2m">
              <node concept="3cmrfG" id="7L_Qkl0g6rc" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6rd" role="AHHXb">
                <ref role="3cqZAo" node="7L_Qkl0g6qK" resolve="H7_H3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6re" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dBKGH" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dBKGJ" role="3SKWNk">
            <property role="3SKdUp" value="Derive the SF value " />
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6rf" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6rg" role="3cpWs9">
            <property role="TrG5h" value="fk_S" />
            <node concept="10Q1$e" id="7L_Qkl0g6rh" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6ri" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6rj" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <node concept="37vLTw" id="7L_Qkl0g6rk" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6pn" resolve="SHTS" />
              </node>
              <node concept="Xl_RD" id="7L_Qkl0g6rl" role="37wK5m">
                <property role="Xl_RC" value="finished" />
              </node>
              <node concept="2ShNRf" id="7L_Qkl0g6rm" role="37wK5m">
                <node concept="3$_iS1" id="7L_Qkl0g6rn" role="2ShVmc">
                  <node concept="3$GHV9" id="7L_Qkl0g6ro" role="3$GQph">
                    <node concept="3cmrfG" id="7L_Qkl0g6rp" role="3$I4v7">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                  <node concept="3qc1$W" id="7L_Qkl0g6rq" role="3$_nBY">
                    <property role="3qc1Xj" value="8" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6rr" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6rs" role="3cpWs9">
            <property role="TrG5h" value="SF_calculated" />
            <node concept="10Q1$e" id="7L_Qkl0g6rt" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6ru" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6rv" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_14YZ" resolve="hmac" />
              <node concept="37vLTw" id="7L_Qkl0g6rw" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6rg" resolve="fk_S" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6rx" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6r1" resolve="H_7" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6ry" role="3cqZAp" />
        <node concept="3SKdUt" id="7L_Qkl0g6r$" role="3cqZAp">
          <node concept="3SKdUq" id="7L_Qkl0g6r_" role="3SKWNk">
            <property role="3SKdUp" value="Now, we need to calculate the actual SF value present in the transcript" />
          </node>
        </node>
        <node concept="3SKdUt" id="7L_Qkl0g6rA" role="3cqZAp">
          <node concept="3SKdUq" id="7L_Qkl0g6rB" role="3SKWNk">
            <property role="3SKdUp" value="We know that SF is in the tr3_tail " />
          </node>
        </node>
        <node concept="3SKdUt" id="7L_Qkl0g6rC" role="3cqZAp">
          <node concept="3SKdUq" id="7L_Qkl0g6rD" role="3SKWNk">
            <property role="3SKdUp" value="And that it is the last 32 bytes of tr3_tail... so there are ct3_tail_length - 32 characters before it" />
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6rF" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6rG" role="3cpWs9">
            <property role="TrG5h" value="SF_transcript" />
            <node concept="10Q1$e" id="7L_Qkl0g6rH" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6rI" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2ShNRf" id="7L_Qkl0g6rJ" role="33vP2m">
              <node concept="3$_iS1" id="7L_Qkl0g6rK" role="2ShVmc">
                <node concept="3$GHV9" id="7L_Qkl0g6rL" role="3$GQph">
                  <node concept="3cmrfG" id="7L_Qkl0g6rM" role="3$I4v7">
                    <property role="3cmrfH" value="32" />
                  </node>
                </node>
                <node concept="3qc1$W" id="7L_Qkl0g6rN" role="3$_nBY">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6rP" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6rQ" role="3cpWs9">
            <property role="TrG5h" value="ServExt_tail_RAM" />
            <node concept="SEaj5" id="7L_Qkl0g6rR" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6rS" role="SEaiP">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="SEatS" id="7L_Qkl0g6rT" role="33vP2m">
              <node concept="3qc1$W" id="7L_Qkl0g6rU" role="6EdiW">
                <property role="3qc1Xj" value="8" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6rV" role="SEatU">
                <ref role="3cqZAo" node="7L_Qkl0g6qA" resolve="ServExt_tail" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="30zMb0dBwkn" role="3cqZAp" />
        <node concept="1Dw8fO" id="7L_Qkl0g6rW" role="3cqZAp">
          <node concept="3clFbS" id="7L_Qkl0g6rX" role="2LFqv$">
            <node concept="3clFbF" id="7L_Qkl0g6rY" role="3cqZAp">
              <node concept="37vLTI" id="7L_Qkl0g6rZ" role="3clFbG">
                <node concept="SwV0n" id="7L_Qkl0g6s0" role="37vLTx">
                  <node concept="3cpWsd" id="7L_Qkl0g6s1" role="SwV0q">
                    <node concept="3SuevK" id="7L_Qkl0g6s2" role="3uHU7w">
                      <node concept="3qc1$W" id="7L_Qkl0g6s3" role="3SuevR">
                        <property role="3qc1Xj" value="8" />
                      </node>
                      <node concept="3cmrfG" id="7L_Qkl0g6s4" role="3Sueug">
                        <property role="3cmrfH" value="32" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7L_Qkl0g6s5" role="3uHU7B">
                      <node concept="3SuevK" id="7L_Qkl0g6s6" role="3uHU7B">
                        <node concept="3qc1$W" id="7L_Qkl0g6s7" role="3SuevR">
                          <property role="3qc1Xj" value="8" />
                        </node>
                        <node concept="37vLTw" id="7L_Qkl0g6s8" role="3Sueug">
                          <ref role="3cqZAo" node="7L_Qkl0g6se" resolve="i" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7L_Qkl0g6s9" role="3uHU7w">
                        <ref role="3cqZAo" node="7L_Qkl0g6tN" resolve="ServExt_tail_len" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7L_Qkl0g6sa" role="SwV0s">
                    <ref role="3cqZAo" node="7L_Qkl0g6rQ" resolve="ServExt_tail_RAM" />
                  </node>
                </node>
                <node concept="AH0OO" id="7L_Qkl0g6sb" role="37vLTJ">
                  <node concept="37vLTw" id="7L_Qkl0g6sc" role="AHEQo">
                    <ref role="3cqZAo" node="7L_Qkl0g6se" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="7L_Qkl0g6sd" role="AHHXb">
                    <ref role="3cqZAo" node="7L_Qkl0g6rG" resolve="SF_transcript" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7L_Qkl0g6se" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="7L_Qkl0g6sf" role="1tU5fm" />
            <node concept="3cmrfG" id="7L_Qkl0g6sg" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="7L_Qkl0g6sh" role="1Dwp0S">
            <node concept="37vLTw" id="7L_Qkl0g6si" role="3uHU7B">
              <ref role="3cqZAo" node="7L_Qkl0g6se" resolve="i" />
            </node>
            <node concept="3cmrfG" id="7L_Qkl0g6sj" role="3uHU7w">
              <property role="3cmrfH" value="32" />
            </node>
          </node>
          <node concept="3uNrnE" id="7L_Qkl0g6sk" role="1Dwrff">
            <node concept="37vLTw" id="7L_Qkl0g6sl" role="2$L3a6">
              <ref role="3cqZAo" node="7L_Qkl0g6se" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6sm" role="3cqZAp" />
        <node concept="3SKdUt" id="7L_Qkl0g6sn" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dBuwG" role="3SKWNk">
            <property role="3SKdUp" value="Verify that the two SF values are identical" />
          </node>
        </node>
        <node concept="3s6pcg" id="7L_Qkl0g6sp" role="3cqZAp">
          <node concept="2YIFZM" id="7L_Qkl0g6sq" role="3s6pch">
            <ref role="37wK5l" to="d2b1:2OJAT4DNwgk" resolve="combine_8_into_256" />
            <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
            <node concept="37vLTw" id="7L_Qkl0g6sr" role="37wK5m">
              <ref role="3cqZAo" node="7L_Qkl0g6rs" resolve="SF_calculated" />
            </node>
          </node>
          <node concept="2YIFZM" id="7L_Qkl0g6ss" role="3s6pci">
            <ref role="37wK5l" to="d2b1:2OJAT4DNwgk" resolve="combine_8_into_256" />
            <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
            <node concept="37vLTw" id="7L_Qkl0g6st" role="37wK5m">
              <ref role="3cqZAo" node="7L_Qkl0g6rG" resolve="SF_transcript" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6su" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6sw" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6sx" role="3cpWs9">
            <property role="TrG5h" value="dHS" />
            <node concept="10Q1$e" id="7L_Qkl0g6sy" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6sz" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6s$" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <node concept="37vLTw" id="7L_Qkl0g6s_" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6tw" resolve="HS" />
              </node>
              <node concept="Xl_RD" id="7L_Qkl0g6sA" role="37wK5m">
                <property role="Xl_RC" value="derived" />
              </node>
              <node concept="2YIFZM" id="7L_Qkl0g6sB" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$NbfY" resolve="SHA2" />
                <ref role="37wK5l" to="d2b1:2OJAT4_1dPi" resolve="hash_of_empty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6sC" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6sD" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6sE" role="3cpWs9">
            <property role="TrG5h" value="MS" />
            <node concept="10Q1$e" id="7L_Qkl0g6sF" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6sG" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6sH" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_15q9" resolve="hkdf_extract" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="7L_Qkl0g6sI" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6sx" resolve="dHS" />
              </node>
              <node concept="2YIFZM" id="7L_Qkl0g6sJ" role="37wK5m">
                <ref role="1Pybhc" to="d2b1:2OJAT4$Ngvf" resolve="Util" />
                <ref role="37wK5l" to="d2b1:2OJAT4_03eA" resolve="new_zero_array" />
                <node concept="3cmrfG" id="7L_Qkl0g6sK" role="37wK5m">
                  <property role="3cmrfH" value="32" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6sL" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6sM" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6sN" role="3cpWs9">
            <property role="TrG5h" value="CATS" />
            <node concept="10Q1$e" id="7L_Qkl0g6sO" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6sP" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6sQ" role="33vP2m">
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <ref role="37wK5l" node="2OJAT4_16Ah" resolve="hkdf_expand_derive_secret" />
              <node concept="37vLTw" id="7L_Qkl0g6sR" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6sE" resolve="MS" />
              </node>
              <node concept="Xl_RD" id="7L_Qkl0g6sS" role="37wK5m">
                <property role="Xl_RC" value="c ap traffic" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6sT" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6r8" resolve="H_3" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6sU" role="3cqZAp" />
        <node concept="3SKdUt" id="30zMb0dIkOz" role="3cqZAp">
          <node concept="3SKdUq" id="30zMb0dIkO_" role="3SKWNk">
            <property role="3SKdUp" value="client application traffic key, iv" />
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6sV" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6sW" role="3cpWs9">
            <property role="TrG5h" value="tk_capp" />
            <node concept="10Q1$e" id="7L_Qkl0g6sX" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6sY" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6sZ" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_166j" resolve="hkdf_expand_derive_tk" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="7L_Qkl0g6t0" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6sN" resolve="CATS" />
              </node>
              <node concept="3cmrfG" id="7L_Qkl0g6t1" role="37wK5m">
                <property role="3cmrfH" value="16" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7L_Qkl0g6t2" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6t3" role="3cpWs9">
            <property role="TrG5h" value="iv_capp" />
            <node concept="10Q1$e" id="7L_Qkl0g6t4" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6t5" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6t6" role="33vP2m">
              <ref role="37wK5l" node="2OJAT4_16mi" resolve="hkdf_expand_derive_iv" />
              <ref role="1Pybhc" node="2OJAT4$Z6ed" resolve="HKDF" />
              <node concept="37vLTw" id="7L_Qkl0g6t7" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6sN" resolve="CATS" />
              </node>
              <node concept="3cmrfG" id="7L_Qkl0g6t8" role="37wK5m">
                <property role="3cmrfH" value="12" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6t9" role="3cqZAp" />
        <node concept="3cpWs8" id="7L_Qkl0g6ta" role="3cqZAp">
          <node concept="3cpWsn" id="7L_Qkl0g6tb" role="3cpWs9">
            <property role="TrG5h" value="dns_plaintext" />
            <node concept="10Q1$e" id="7L_Qkl0g6tc" role="1tU5fm">
              <node concept="3qc1$W" id="7L_Qkl0g6td" role="10Q1$1">
                <property role="3qc1Xj" value="8" />
              </node>
            </node>
            <node concept="2YIFZM" id="7L_Qkl0g6te" role="33vP2m">
              <ref role="37wK5l" to="liel:2OJAT4DzYl6" resolve="aes_gcm_decrypt" />
              <ref role="1Pybhc" to="liel:2OJAT4_dWEz" resolve="AES_GCM" />
              <node concept="37vLTw" id="7L_Qkl0g6tf" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6sW" resolve="tk_capp" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6tg" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6t3" resolve="iv_capp" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6th" role="37wK5m">
                <ref role="3cqZAo" node="7L_Qkl0g6tP" resolve="appl_ct" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7L_Qkl0g6ti" role="3cqZAp" />
        <node concept="3cpWs6" id="7L_Qkl0g6tj" role="3cqZAp">
          <node concept="2ShNRf" id="7L_Qkl0g6tk" role="3cqZAk">
            <node concept="3g6Rrh" id="7L_Qkl0g6tl" role="2ShVmc">
              <node concept="10Q1$e" id="7L_Qkl0g6tm" role="3g7fb8">
                <node concept="3qc1$W" id="7L_Qkl0g6tn" role="10Q1$1">
                  <property role="3qc1Xj" value="8" />
                </node>
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6to" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6tb" resolve="dns_plaintext" />
              </node>
              <node concept="37vLTw" id="7LvGvKRQ6FZ" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6pw" resolve="tk_shs" />
              </node>
              <node concept="37vLTw" id="7LvGvKRQ7Re" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6pB" resolve="iv_shs" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6tp" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6sW" resolve="tk_capp" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6tq" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6t3" resolve="iv_capp" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6tr" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6r8" resolve="H_3" />
              </node>
              <node concept="37vLTw" id="7L_Qkl0g6ts" role="3g7hyw">
                <ref role="3cqZAo" node="7L_Qkl0g6rs" resolve="SF_calculated" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Q1$e" id="7L_Qkl0g6tt" role="3clF45">
        <node concept="10Q1$e" id="7L_Qkl0g6tu" role="10Q1$1">
          <node concept="3qc1$W" id="7L_Qkl0g6tv" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tw" role="3clF46">
        <property role="TrG5h" value="HS" />
        <node concept="10Q1$e" id="7L_Qkl0g6tx" role="1tU5fm">
          <node concept="3qc1$W" id="7L_Qkl0g6ty" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tz" role="3clF46">
        <property role="TrG5h" value="H2" />
        <node concept="10Q1$e" id="7L_Qkl0g6t$" role="1tU5fm">
          <node concept="3qc1$W" id="7L_Qkl0g6t_" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tD" role="3clF46">
        <property role="TrG5h" value="CH_SH_len" />
        <node concept="3qc1$W" id="7L_Qkl0g6tE" role="1tU5fm">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tI" role="3clF46">
        <property role="TrG5h" value="ServExt_len" />
        <node concept="3qc1$W" id="7L_Qkl0g6tJ" role="1tU5fm">
          <property role="3qc1Xj" value="16" />
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tK" role="3clF46">
        <property role="TrG5h" value="ServExt_ct_tail" />
        <node concept="10Q1$e" id="7L_Qkl0g6tL" role="1tU5fm">
          <node concept="3qc1$W" id="7L_Qkl0g6tM" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tN" role="3clF46">
        <property role="TrG5h" value="ServExt_tail_len" />
        <node concept="3qc1$W" id="7L_Qkl0g6tO" role="1tU5fm">
          <property role="3qc1Xj" value="8" />
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0gHcP" role="3clF46">
        <property role="TrG5h" value="SHA_H_Checkpoint" />
        <node concept="10Q1$e" id="7L_Qkl0gH_8" role="1tU5fm">
          <node concept="3qc1$W" id="7L_Qkl0gHzk" role="10Q1$1">
            <property role="3qc1Xj" value="32" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7L_Qkl0g6tP" role="3clF46">
        <property role="TrG5h" value="appl_ct" />
        <node concept="10Q1$e" id="7L_Qkl0g6tQ" role="1tU5fm">
          <node concept="3qc1$W" id="7L_Qkl0g6tR" role="10Q1$1">
            <property role="3qc1Xj" value="8" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7L_Qkl0g6tS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7L_Qkl0g686" role="jymVt" />
    <node concept="2tJIrI" id="6IcGJg3k2S3" role="jymVt" />
    <node concept="2tJIrI" id="7hpWUToAe_Y" role="jymVt" />
    <node concept="2tJIrI" id="6IcGJg3k1Zr" role="jymVt" />
    <node concept="2tJIrI" id="6IcGJg3k27g" role="jymVt" />
    <node concept="2tJIrI" id="64TdDNFQhrj" role="jymVt" />
    <node concept="2tJIrI" id="7LvGvKQuQ$d" role="jymVt" />
  </node>
</model>

