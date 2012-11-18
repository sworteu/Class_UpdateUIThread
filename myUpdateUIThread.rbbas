#tag Class
Protected Class myUpdateUIThread
Inherits SWORT_UpdateUIThread
	#tag Event
		Sub Run()
		  'When the thread runs, we set myPropertyToUpdate and when the UpdateUI event is run (by default every 200ms)
		  'we update the UI itself.
		  
		  
		  For i As Uint32 = 0 to 200000000
		    myPropertyToUpdate = "Count: " + Str(i)
		  Next
		End Sub
	#tag EndEvent

	#tag Event
		Sub UpdateUI()
		  Window1.myLabel.Text = myPropertyToUpdate
		End Sub
	#tag EndEvent


	#tag Note, Name = Usage
		
		There are multiple ways to use the SWORT_UpdateUIThread class.
		You can subclass it, just as this example and add it to a window with a property.
		
		You can also add the class to the window using drag and drop from the controls list.
		It may be added as you wish.
		
		Don't forget to set:
		myUpdateUIThread.Period = 200 'is 200ms, or more
		myUpdateUIThread.Mode = 2 'Use mode multiple for the timer to fire every "period" in ms.
		You can enable or disable the timer by using myUpdateUIThread.Enabled = false 'or true
		
		
		If you find bugs, have suggestions or other info please let me know by github here:
		https://github.com/sworteu/Class_UpdateUIThread
		
	#tag EndNote


	#tag Property, Flags = &h0
		#tag Note
			This property will be set by the thread (Run event) itself and read from within the timer (UpdateUI event)
		#tag EndNote
		myPropertyToUpdate As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="UpdateUIThread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Mode"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="UpdateUIThread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="myPropertyToUpdate"
			Group="Behavior"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="UpdateUIThread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Priority"
			Visible=true
			Group="Behavior"
			InitialValue="5"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StackSize"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Thread"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			InheritedFrom="Thread"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
